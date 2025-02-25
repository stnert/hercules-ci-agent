{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingVia #-}

module Hercules.Agent.WorkerProtocol.LogSettings where

import Data.Binary
import Hercules.Agent.Sensitive
import Protolude

data LogSettings = LogSettings
  { path :: Text,
    baseURL :: Text,
    token :: Sensitive Text
  }
  deriving (Generic, Binary, Show, Eq)
