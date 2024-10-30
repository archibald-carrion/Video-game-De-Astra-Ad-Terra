#ifndef RIGIDBODYCOMPONENT_HPP
#define RIGIDBODYCOMPONENT_HPP

#include <glm/glm.hpp> // GLM math library, used for vec2

/**
 * @struct RigidBodyComponent
 * @brief The RigidBodyComponent struct represents a rigid body component for an entity.
 */
struct RigidBodyComponent {
    glm::vec2 velocity; // velocity of the rigid body

    /**
     * @brief Construct a new Rigid Body Component object
     * @param velocity The velocity of the rigid body
     */
    RigidBodyComponent(glm::vec2 velocity = glm::vec2(0.0, 0.0)) {
        this->velocity = velocity;
    }
};

#endif // RIGIDBODYCOMPONENT_HPP