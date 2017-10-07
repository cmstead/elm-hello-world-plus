module HelloTypes exposing (InputMsg(NameChange, MessageChange), ViewModel)

type alias ViewModel = { 
    name: String,
    message: String
}

type InputMsg = NameChange String
              | MessageChange String