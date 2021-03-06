module Add where

import Prelude
  ( IO )
import Types
  ( ExerciseType( ToDoEx, DoneEx, OtherEx ), Exercises )
import ExercisesFromFile
  ( getExercisesFromFile )
import UsefulForActions
  ( exsToFileAndUpdate )
import GetFromUser
  ( getExerciseFromUser, myMZipWith )
import Control.Monad
  ( (>=>) )

addActions :: [ IO () ]
addActions = [ add ToDoEx, add DoneEx, add OtherEx ]

add :: ExerciseType -> IO ()
add = exsAfterAddition >=> exsToFileAndUpdate

exsAfterAddition :: ExerciseType -> IO Exercises
exsAfterAddition exType =
  myMZipWith (:) ( getExerciseFromUser exType ) getExercisesFromFile
