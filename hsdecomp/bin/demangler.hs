-- ghc -o demangler demangler.hs -static -v -package ghc-boot
import Data.Char
import qualified GHC.Utils.Encoding as Encoding

main :: IO ()
main = do
   inp <- getContents
   let encoded = lines inp
       decoded = map Encoding.zDecodeString encoded
   mapM_ putStrLn decoded