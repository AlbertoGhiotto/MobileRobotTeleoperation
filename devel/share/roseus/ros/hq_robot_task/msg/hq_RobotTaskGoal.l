;; Auto-generated. Do not edit!


(when (boundp 'hq_robot_task::hq_RobotTaskGoal)
  (if (not (find-package "HQ_ROBOT_TASK"))
    (make-package "HQ_ROBOT_TASK"))
  (shadow 'hq_RobotTaskGoal (find-package "HQ_ROBOT_TASK")))
(unless (find-package "HQ_ROBOT_TASK::HQ_ROBOTTASKGOAL")
  (make-package "HQ_ROBOT_TASK::HQ_ROBOTTASKGOAL"))

(in-package "ROS")
;;//! \htmlinclude hq_RobotTaskGoal.msg.html


(defclass hq_robot_task::hq_RobotTaskGoal
  :super ros::object
  :slots (_name _uid _parameters ))

(defmethod hq_robot_task::hq_RobotTaskGoal
  (:init
   (&key
    ((:name __name) "")
    ((:uid __uid) "")
    ((:parameters __parameters) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _uid (string __uid))
   (setq _parameters (string __parameters))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _uid
    4 (length _uid)
    ;; string _parameters
    4 (length _parameters)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _uid
       (write-long (length _uid) s) (princ _uid s)
     ;; string _parameters
       (write-long (length _parameters) s) (princ _parameters s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parameters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hq_robot_task::hq_RobotTaskGoal :md5sum-) "47a1520173b55d0b167022a5f87c0efd")
(setf (get hq_robot_task::hq_RobotTaskGoal :datatype-) "hq_robot_task/hq_RobotTaskGoal")
(setf (get hq_robot_task::hq_RobotTaskGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string name
string uid
string parameters

")



(provide :hq_robot_task/hq_RobotTaskGoal "47a1520173b55d0b167022a5f87c0efd")

