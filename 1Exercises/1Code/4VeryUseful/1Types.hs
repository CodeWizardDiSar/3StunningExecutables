module Types where
import Prelude (String,Int,Bool)
-- Always a pleasure to have types (sorry python)
data HopefullySome a = IndeedItIs a|Nothing
data Exercise = Done   ExerciseData
              | Missed ExerciseData
              | ToDo   ExerciseData Date
type Strings               = [String]
type Line                  = String  
type Lines                 = [Line] 
type Word                  = String
type Words                 = [Word]
type Message               = String
type Messages              = [Message]
type Day                   = Int
type Month                 = Int
type Year                  = Int
type Date                  = (Day,Month,Year)
type SubjectName           = String
type ExerciseNumber        = String
type HopefullyExerciseName = HopefullySome String
type Exercises             = [Exercise]
type ExerciseData          = (SubjectName
                             ,ExerciseNumber
                             ,HopefullyExerciseName)
class FromStringTo    a where toType         :: String->a
class StringVersionOf a where toString       :: a->String
class StringFrom      a where makeStringFrom :: a->String