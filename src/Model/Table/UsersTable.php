<?php 
namespace App\Model\Table;

use Cake\Auth\DefaultPasswordHasher;
use Cake\Utility\Text;
use Cake\Event\Event;
use Cake\ORM\Table;
use Cake\Utility\Security;
use \Cake\Datasource\EntityInterface;
use \Cake\Http\Session;

class UsersTable extends Table
{
    public function beforeSave(Event $event)
    {
        $entity = $event->getData('entity');

        if ($entity->isNew()) {
            $hasher = new DefaultPasswordHasher();

            // Generate an API 'token'
            $entity->api_key_plain = Security::hash(Security::randomBytes(32), 'sha256', false);

            // Bcrypt the token so BasicAuthenticate can check
            // it during login.
            $entity->api_key = $hasher->hash($entity->api_key_plain);
        }
        return true;
    }

////////////////////////////////////////////////////////////////////////////
    public function findAuth(\Cake\ORM\Query $query, array $options)
    {
        $query
            ->select(['id', 'email', 'password'])
            ->where(['Users.status' => 1]);

        return $query;
    }


    public function getUser(EntityInterface $profile, Session $session)
    {
        // Make sure here that all the required fields are actually present
        if (empty($profile->email)) {
            throw new \RuntimeException('Could not find email in social profile.');
        }

        // If you want to associate the social entity with currently logged in user
        // use the $session argument to get user id and find matching user entity.
        $userId = $session->read('Auth.id');
        if ($userId) {
            return $this->get($userId);
        }

        // Check if user with same email exists. This avoids creating multiple
        // user accounts for different social identities of same user. You should
        // probably skip this check if your system doesn't enforce unique email
        // per user.
        $user = $this->find()
            ->where(['email' => $profile->email])
            ->first();

        if ($user) {
            return $user;
        }

        // Create new user account
        $user = $this->newEntity(['email' => $profile->email]);
        $user = $this->save($user);

        if (!$user) {
            throw new \RuntimeException('Unable to save new user');
        }

        return $user;
    }
}


?>