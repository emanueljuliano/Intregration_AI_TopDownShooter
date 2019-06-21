extends Node

var dialog = [
    {
      "text": "01001000 01100101 01101100 01101100 01101111 00100000 01010111 01101111 01110010 01101100 01100100",
      "links": [
        {
          "name": "...",
          "link": "...",
          "pid": "2"
        }
      ],
      "name": "First Dialog",
      "pid": "1",
      "position": {
        "x": "412",
        "y": "200"
      }
    },
    {
      "text": "Wake up...",
      "links": [
        {
          "name": "Uh?",
          "link": "uh?",
          "pid": "3"
        },
        {
          "name": "... ",
          "link": " .2",
          "pid": "4"
        }
      ],
      "name": "...",
      "pid": "2",
      "position": {
        "x": "559",
        "y": "282"
      }
    },
    {
      "text": "Oh… You slept for so long… I missed you.",
      "links": [
        {
          "name": "Who are you?",
          "link": "Who are you?",
          "pid": "8"
        }
      ],
      "name": "uh?",
      "pid": "3",
      "position": {
        "x": "584",
        "y": "481"
      }
    },
    {
      "text": "I know you can hear me, don’t worry.",
      "links": [
        {
          "name": "Uh?",
          "link": "uh?",
          "pid": "3"
        },
        {
          "name": "... ",
          "link": " .3",
          "pid": "5"
        }
      ],
      "name": " .2",
      "pid": "4",
      "position": {
        "x": "838",
        "y": "323"
      }
    },
    {
      "text": "So... You don’t want to talk to me now?",
      "links": [
        {
          "name": "That's not it...",
          "link": " uh?2",
          "pid": "6"
        },
        {
          "name": "... ",
          "link": " .4",
          "pid": "7"
        }
      ],
      "name": " .3",
      "pid": "5",
      "position": {
        "x": "1024",
        "y": "374"
      }
    },
    {
      "text": "Phew... I'm so glad that you answered me.\nYou slept for so long… I missed you.",
      "links": [
        {
          "name": "Who are you?",
          "link": "Who are you?",
          "pid": "8"
        }
      ],
      "name": "uh?",
      "pid": "6",
      "position": {
        "x": "740",
        "y": "486"
      }
    },
    {
      "text": "I understand… But I will help you on your journey anyway.",
      "links": [
        {
          "name": "...",
          "link": "... .5",
          "pid": "9"
        }
      ],
      "name": " .4",
      "pid": "7",
      "position": {
        "x": "1164",
        "y": "502"
      }
    },
    {
      "text": "Oh, you forgot about me?\nI’m Neeko, a longtime friend.",
      "links": [
        {
          "name": "Sorry… I can’t remember you…",
          "link": "Sorry… I can’t remember you…",
          "pid": "10"
        }
      ],
      "name": "Who are you?",
      "pid": "8",
      "position": {
        "x": "658",
        "y": "638"
      }
    },
    {
      "text": "Bye",
      "links": [
        {
          "name": "...",
          "link": "W-whait…",
          "pid": "12"
        }
      ],
      "name": "... .5",
      "pid": "9",
      "position": {
        "x": "1286",
        "y": "619"
      }
    },
    {
      "text": "Don’t worry, I thought that would happen.",
      "links": [
        {
          "name": "Why?",
          "link": "Why?",
          "pid": "11"
        }
      ],
      "name": "Sorry… I can’t remember you…",
      "pid": "10",
      "position": {
        "x": "728",
        "y": "757"
      }
    },
    {
      "text": "Oh no, the professor is coming, I gotta go…",
      "links": [
        {
          "name": "W-wait…",
          "link": "W-whait…",
          "pid": "12"
        }
      ],
      "name": "Why?",
      "pid": "11",
      "position": {
        "x": "804",
        "y": "900"
      }
    },
    {
      "text": "I wonder, when will he wake up?",
      "links": [
        {
          "name": "Hey?",
          "link": "Hey?",
          "pid": "14"
        },
        {
          "name": "... ",
          "link": " .6",
          "pid": "13"
        }
      ],
      "name": "W-wait…",
      "pid": "12",
      "position": {
        "x": "904",
        "y": "1033"
      }
    },
    {
      "text": "Let-me try again...",
      "links": [
        {
          "name": "Wait... what are you doing?",
          "link": "Hey?",
          "pid": "14"
        },
        {
          "name": "... ",
          "link": ".7",
          "pid": "15"
        }
      ],
      "name": " .6",
      "pid": "13",
      "position": {
        "x": "1495",
        "y": "920"
      }
    },
    {
      "text": "Oh… you finally woke up.\nSo, how are you feeling?",
      "links": [
        {
          "name": "Bad...",
          "link": "Bad...",
          "pid": "18"
        },
        {
          "name": "Great!",
          "link": "Great!",
          "pid": "19"
        }
      ],
      "name": "Hey?",
      "pid": "14",
      "position": {
        "x": "1118",
        "y": "1217"
      }
    },
    {
      "text": "... Hello?",
      "links": [
        {
          "name": "Hello. ",
          "link": "Hey?",
          "pid": "14"
        },
        {
          "name": "... ",
          "link": ".8",
          "pid": "16"
        }
      ],
      "name": ".7",
      "pid": "15",
      "position": {
        "x": "1582",
        "y": "1021"
      }
    },
    {
      "text": "He didn’t answer again… \nI'll have to start all over again!",
      "links": [
        {
          "name": "... ",
          "link": "END2",
          "pid": "21"
        }
      ],
      "name": ".8",
      "pid": "16",
      "position": {
        "x": "1651",
        "y": "1138"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END",
      "pid": "17",
      "position": {
        "x": "1128",
        "y": "1646"
      }
    },
    {
      "text": "Makes sense, after all. I'm not surprised with it.",
      "links": [
        {
          "name": "But, what happened?",
          "link": "But, what happened?",
          "pid": "20"
        }
      ],
      "name": "Bad...",
      "pid": "18",
      "position": {
        "x": "1042",
        "y": "1361"
      }
    },
    {
      "text": "… Strange. I didn’t expect that answer,\nI mean… after all...",
      "links": [
        {
          "name": "But, what happened?",
          "link": "But, what happened?",
          "pid": "20"
        }
      ],
      "name": "Great!",
      "pid": "19",
      "position": {
        "x": "1189",
        "y": "1370"
      }
    },
    {
      "text": "Your memory too…\nIt doesn’t matter, I will explain you later, but for now, you MUST fight!",
      "links": [
        {
          "name": "... ",
          "link": "END",
          "pid": "17"
        }
      ],
      "name": "But, what happened?",
      "pid": "20",
      "position": {
        "x": "1121",
        "y": "1510"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END2",
      "pid": "21",
      "position": {
        "x": "1759",
        "y": "1277"
      }
    }
  ]

func _ready():
	pass