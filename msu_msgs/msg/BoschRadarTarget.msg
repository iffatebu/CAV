# The two character string that determines the target number
string num_string

# Flag for whether the target was received over can
bool received_can

# All position position, velocity, and acceleration information is relative to the vehicle
# Contain x, y, and z relative position
geometry_msgs/Point relative_position
# Only contains x and y relative velocity
geometry_msgs/Vector3 relative_velocity
# Only contains x relative acceleration
geometry_msgs/Vector3 relative_acceleration

# Only contains x and y position deviation
geometry_msgs/Vector3 position_deviation
# Only contains x velocity deviation
geometry_msgs/Vector3 velocity_deviation
# Only contains x acceleration deviation
geometry_msgs/Vector3 acceleration_deviation

# Estimated distance in the x-direction lost due to reflex moving from target vehicle
float32 rear_end_loss
# Target length in x-direction
float32 length

# Flag if this is a valid target
bool valid
# Flag if target was prviously present
bool hist
# Flag if target was measured this cycle
bool measured

# The radar's estimate of the moving state of the target:
#   0: INDETERMINATE
#   1: MOVING
#   2: STANDING
#   3: STOPPED
uint8 moving_state

# Target classification with the highest probability
#   0: Unknown
#   1: Moving Four Wheel Vehicle
#   2: Moving Two Wheel Vehicle
#   3: Moving Pedestrian
#   4: Constant Element
uint8 classification
# The probability of the above classification
float32 classification_probability

# Probability that the target exists
float32 existence_probability

# Probability of target being an obstacle in host vehicle's path
float32 obstacle_probability
# Probability of target not being an obstacle in host vehicle's path
float32 nonobstacle_probability
# 1 - obstacle - nonobstacle = radar's unknown
float32 obstacle_unknown_probability