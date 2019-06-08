extends Node

var tutorial_scene = 0
var id = 4
var key = "first"

var dict =  [
    {
      "text": "Wake up... please... just wake up...",
      "links": [
        {
          "name": "Uh?",
          "link": "Uh?",
          "pid": "2"
        },
        {
          "name": "...",
          "link": "...",
          "pid": "3"
        }
      ],
      "name": "Start",
      "pid": "1",
      "position": {
        "x": "572",
        "y": "0"
      }
    },
    {
      "text": "Oh God... I'm so glad that you are alive...",
      "links": [
        {
          "name": "Who are you?!",
          "link": "Who are you?!",
          "pid": "5"
        },
        {
          "name": "...where am I?",
          "link": "...where am I?",
          "pid": "6"
        }
      ],
      "name": "Uh?",
      "pid": "2",
      "position": {
        "x": "456",
        "y": "120"
      }
    },
    {
      "text": "Hello, are you there?",
      "links": [
        {
          "name": "Hello?",
          "link": "Hello?",
          "pid": "4"
        },
        {
          "name": "....",
          "link": "....",
          "pid": "7"
        }
      ],
      "name": "...",
      "pid": "3",
      "position": {
        "x": "683",
        "y": "121"
      }
    },
    {
      "text": "Oh God... I'm so glad that you are alive...",
      "links": [
        {
          "name": "Who are you?!",
          "link": "Who are you?!",
          "pid": "5"
        },
        {
          "name": "...where am I?",
          "link": "...where am I?",
          "pid": "6"
        }
      ],
      "name": "Hello?",
      "pid": "4",
      "position": {
        "x": "449",
        "y": "241"
      }
    },
    {
      "text": "You can't remember me",
      "links": [
        {
          "name": "...no..?",
          "link": "...no..?",
          "pid": "8"
        },
        {
          "name": "Oh... it's kind of dark in my mind, but yeah... I remember you",
          "link": "Oh... it's kind of dark in my mind, but yeah... you are my father",
          "pid": "9"
        }
      ],
      "name": "Who are you?!",
      "pid": "5",
      "position": {
        "x": "330",
        "y": "369"
      }
    },
    {
      "text": "You don't remember this place?",
      "links": [
        {
          "name": "no...",
          "link": "no...",
          "pid": "14"
        },
        {
          "name": "I... I guess I know what place is that...",
          "link": "I... I guess I know what place is that...",
          "pid": "15"
        }
      ],
      "name": "...where am I?",
      "pid": "6",
      "position": {
        "x": "570",
        "y": "374"
      }
    },
    {
      "text": "Oh no... please, answer something if you are there!",
      "links": [
        {
          "name": "help!",
          "link": "help!",
          "pid": "12"
        },
        {
          "name": ".....",
          "link": ".....",
          "pid": "13"
        }
      ],
      "name": "....",
      "pid": "7",
      "position": {
        "x": "904",
        "y": "222"
      }
    },
    {
      "text": "Me... Yor brother.. even Neeko... You really forget about everything?",
      "links": [
        {
          "name": "I... I don't know what you're talking about...",
          "link": "I... I don't know what you're talking about...",
          "pid": "10"
        }
      ],
      "name": "...father?",
      "pid": "8",
      "position": {
        "x": "150",
        "y": "527"
      }
    },
    {
      "text": "Great! At least you don't loss your entire memory. But for now, you just have to know that I'm the Doctor and the people how you care about are in danger.",
      "links": [
        {
          "name": "Oh no... what can I do?",
          "link": "Oh no... what can I do?",
          "pid": "17"
        },
        {
          "name": "Where are they?",
          "link": "Where are they?",
          "pid": "18"
        }
      ],
      "name": "Oh... it's kind of dark in my mind, but yeah... you are my father",
      "pid": "9",
      "position": {
        "x": "455",
        "y": "695"
      }
    },
    {
      "text": "It doesn't matter now, I'm the Doctor and important people are in danger, they need you.",
      "links": [
        {
          "name": "but....",
          "link": "but....",
          "pid": "11"
        }
      ],
      "name": "I... I don't know what you're talking about...",
      "pid": "10",
      "position": {
        "x": "96",
        "y": "657"
      }
    },
    {
      "text": "Take this and go outside, you will remember about everything.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "okay!",
          "pid": "19"
        }
      ],
      "name": "but....",
      "pid": "11",
      "position": {
        "x": "71",
        "y": "803"
      }
    },
    {
      "text": "Oh, that's okay, that's okay, don't worry, it was just an nightmare...",
      "links": [
        {
          "name": "Who are you?!",
          "link": "Who are you?!",
          "pid": "5"
        },
        {
          "name": "...where am I?",
          "link": "...where am I?",
          "pid": "6"
        }
      ],
      "name": "help!",
      "pid": "12",
      "position": {
        "x": "762",
        "y": "371"
      }
    },
    {
      "text": "Didn't work again... uffff.... I will have to restart all over!",
      "links": [
        {
          "name": "...end",
          "link": "...end"
        }
      ],
      "name": ".....",
      "pid": "13",
      "position": {
        "x": "1190",
        "y": "350"
      }
    },
    {
      "text": "Do you know who I am?",
      "links": [
        {
          "name": "no....",
          "link": "no....",
          "pid": "16"
        }
      ],
      "name": "no...",
      "pid": "14",
      "position": {
        "x": "535",
        "y": "532"
      }
    },
    {
      "text": "Great! At least you don't loss your entire memory. But for now, you just have to know that I'm your father and that the people how you care about are in danger.",
      "links": [
        {
          "name": "Oh no... what can I do?",
          "link": "Oh no... what can I do?",
          "pid": "17"
        },
        {
          "name": "Where are they?",
          "link": "Where are they?",
          "pid": "18"
        }
      ],
      "name": "I... I guess I know what place is that...",
      "pid": "15",
      "position": {
        "x": "753",
        "y": "539"
      }
    },
    {
      "text": "You can't remember your own father?",
      "links": [
        {
          "name": "...father?",
          "link": "...father?",
          "pid": "8"
        },
        {
          "name": "Oh... it's kind of dark in my mind, but yeah... you are my father",
          "link": "Oh... it's kind of dark in my mind, but yeah... you are my father",
          "pid": "9"
        }
      ],
      "name": "no....",
      "pid": "16",
      "position": {
        "x": "332",
        "y": "530"
      }
    },
    {
      "text": "For now, you have to learn again how to fight, here, take this... it's too dangerous to go alone!",
      "links": [
        {
          "name": "UPGRADE",
          "link": "okay!",
          "pid": "19"
        }
      ],
      "name": "Oh no... what can I do?",
      "pid": "17",
      "position": {
        "x": "915",
        "y": "849"
      }
    },
    {
      "text": "Outside of this lab.\nFor now, you have to learn again how to fight, here, take this... it's too dangerous to go alone!",
      "links": [
        {
          "name": "UPGRADE",
          "link": "okay!",
          "pid": "19"
        }
      ],
      "name": "Where are they?",
      "pid": "18",
      "position": {
        "x": "566",
        "y": "870"
      }
    },
    {
      "text": "END.",
      "name": "UPGRADE",
      "pid": "19",
      "position": {
        "x": "746",
        "y": "959"
      }
    },
    {
      "text": "END",
      "name": "end",
      "pid": "20",
      "position": {
        "x": "1267",
        "y": "502"
      }
    }
  ]

var tutorial =  [
    {
      "text": "Oh... I didn't imagine that you where so week.\nTake this, it will help.",
      "links": [
        {
          "name": "TAKE ",
          "link": "take",
          "pid": "2"
        }
      ],
      "name": "Wh-what happend? I...I couldn't move",
      "pid": "1",
      "position": {
        "x": "411",
        "y": "351"
      }
    },
    {
      "text": "Now you can move, try to survive this time.\nYou just have to run, is like in a game, W A S D you know?",
      "links": [
        {
          "name": "...",
          "link": "...",
          "pid": "3"
        }
      ],
      "name": "take",
      "pid": "2",
      "position": {
        "x": "532",
        "y": "501"
      }
    },
    {
      "text": "What I'm talking about?\nYou don't even remeber about yourself...",
      "links": [
        {
          "name": "UPGRADE",
          "link": "UPGRADE",
          "pid": "4"
        }
      ],
      "name": "...",
      "pid": "3",
      "position": {
        "x": "532",
        "y": "651"
      }
    },
    {
      "text": "[[Tutorial 2]]",
      "links": [
        {
          "name": "Tutorial 2",
          "link": "Tutorial 2",
          "pid": "6"
        }
      ],
      "name": "UPGRADE",
      "pid": "4",
      "position": {
        "x": "532",
        "y": "801"
      }
    },
    {
      "text": "Oh, you already died?",
      "links": [
        {
          "name": "Wh-what happend? I...I couldn't move",
          "link": "Wh-what happend? I...I couldn't move",
          "pid": "1"
        }
      ],
      "name": "Start",
      "pid": "5",
      "position": {
        "x": "463",
        "y": "242"
      }
    },
    {
      "text": "Oh no, here we are again.",
      "links": [
        {
          "name": "But... There was no place to run...",
          "link": "But... There was no place to run...",
          "pid": "7"
        }
      ],
      "name": "Tutorial 2",
      "pid": "6",
      "position": {
        "x": "652",
        "y": "946"
      }
    },
    {
      "text": "In some cases, you can not run. You HAVE to fight!",
      "links": [
        {
          "name": "But how can I do this?",
          "link": "But how can I do this?",
          "pid": "8"
        },
        {
          "name": "I don't want to hurt anyone!",
          "link": "I don't want to hurt anyone!",
          "pid": "9"
        }
      ],
      "name": "But... There was no place to run...",
      "pid": "7",
      "position": {
        "x": "652",
        "y": "1101"
      }
    },
    {
      "text": "Here, It's to dangerous to go alone, so take this:",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        }
      ],
      "name": "But how can I do this?",
      "pid": "8",
      "position": {
        "x": "809",
        "y": "1267"
      }
    },
    {
      "text": "Life is not a pacifist game where you can choose this.\nYou HAVE to hurt someone to stay alive.",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE",
          "link": "DON'T TAKE",
          "pid": "11"
        }
      ],
      "name": "I don't want to hurt anyone!",
      "pid": "9",
      "position": {
        "x": "535",
        "y": "1263"
      }
    },
    {
      "text": "Ok, a gun is self explanatory.\nYou just have to CLICK and shoot, it's really intuitive.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "T3",
          "pid": "24"
        }
      ],
      "name": "TAKE",
      "pid": "10",
      "position": {
        "x": "1196",
        "y": "1522"
      }
    },
    {
      "text": "They are just BUGS, please, take this already.",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d2",
          "pid": "12"
        }
      ],
      "name": "DON'T TAKE",
      "pid": "11",
      "position": {
        "x": "375",
        "y": "1424"
      }
    },
    {
      "text": "You are pissing me off.\nJust take this and go!",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d3",
          "pid": "13"
        }
      ],
      "name": " d2",
      "pid": "12",
      "position": {
        "x": "279",
        "y": "1575"
      }
    },
    {
      "text": "You are leaving me with no choices...",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "DON'T TAKE ",
          "link": "another_voice",
          "pid": "14"
        }
      ],
      "name": " d3",
      "pid": "13",
      "position": {
        "x": "166",
        "y": "1779"
      }
    },
    {
      "text": "Do-don't take",
      "links": [
        {
          "name": "Uh??",
          "link": "Uh??",
          "pid": "15"
        }
      ],
      "name": "another_voice",
      "pid": "14",
      "position": {
        "x": "178",
        "y": "1954"
      }
    },
    {
      "text": "Okay, okay, I will have to use my most powerfull weapon?",
      "links": [
        {
          "name": "TAKE",
          "link": "TAKE",
          "pid": "10"
        },
        {
          "name": "What was that?",
          "link": "What was that?",
          "pid": "16"
        }
      ],
      "name": "Uh??",
      "pid": "15",
      "position": {
        "x": "301",
        "y": "2133"
      }
    },
    {
      "text": "That what?",
      "links": [
        {
          "name": "The different voice that spoked",
          "link": "The different voice that spoked",
          "pid": "17"
        }
      ],
      "name": "What was that?",
      "pid": "16",
      "position": {
        "x": "430",
        "y": "2294"
      }
    },
    {
      "text": "Oh.. it must be some memory backing to you! What a greate notice!",
      "links": [
        {
          "name": "Y-yeah, it must be",
          "link": "Y-yeah, it must be",
          "pid": "18"
        }
      ],
      "name": "The different voice that spoked",
      "pid": "17",
      "position": {
        "x": "431",
        "y": "2423"
      }
    },
    {
      "text": "But for now, I have to tell you something",
      "links": [
        {
          "name": "What?",
          "link": "What?",
          "pid": "19"
        }
      ],
      "name": "Y-yeah, it must be",
      "pid": "18",
      "position": {
        "x": "448",
        "y": "2563"
      }
    },
    {
      "text": "Even if you don't remember, people that I care about, people that YOU care about are in danger, and you can only help them by getting out of this lab.",
      "links": [
        {
          "name": "But...",
          "link": "But...",
          "pid": "20"
        }
      ],
      "name": "What?",
      "pid": "19",
      "position": {
        "x": "451",
        "y": "2694"
      }
    },
    {
      "text": "And the only way to do this, is by taking that gun and killing every bug that are currupting this world.\nSo, please .. take that gun.",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d5",
          "pid": "21"
        }
      ],
      "name": "But...",
      "pid": "20",
      "position": {
        "x": "652",
        "y": "2771"
      }
    },
    {
      "text": "Okay, that is your position, but I will be here until you take this",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d6",
          "pid": "22"
        }
      ],
      "name": " d5",
      "pid": "21",
      "position": {
        "x": "844",
        "y": "2879"
      }
    },
    {
      "text": "...",
      "links": [
        {
          "name": "TAKE ",
          "link": " t2",
          "pid": "23"
        },
        {
          "name": "DON'T TAKE ",
          "link": " d6",
          "pid": "22"
        }
      ],
      "name": " d6",
      "pid": "22",
      "position": {
        "x": "1227",
        "y": "2707"
      }
    },
    {
      "text": "Thank you.",
      "links": [
        {
          "name": "What I have to do now? ",
          "link": "TAKE",
          "pid": "10"
        }
      ],
      "name": " t2",
      "pid": "23",
      "position": {
        "x": "1119",
        "y": "2272"
      }
    },
    {
      "text": "[[Turorial3]]",
      "links": [
        {
          "name": "Turorial3",
          "link": "Turorial3",
          "pid": "25"
        }
      ],
      "name": "T3",
      "pid": "24",
      "position": {
        "x": "1293",
        "y": "1730"
      }
    },
    {
      "text": "That was scary...",
      "links": [
        {
          "name": "What was that? ",
          "link": " wwt2",
          "pid": "26"
        }
      ],
      "name": "Turorial3",
      "pid": "25",
      "position": {
        "x": "1496",
        "y": "1897"
      }
    },
    {
      "text": "It must be part of the infection of the bugs.\nThe world is full of that thing, please don't touch that.",
      "links": [
        {
          "name": "But it was faster than me.",
          "link": "But it was faster than me.",
          "pid": "27"
        }
      ],
      "name": " wwt2",
      "pid": "26",
      "position": {
        "x": "1633",
        "y": "2040"
      }
    },
    {
      "text": "In that case, you just have to run faster right?",
      "links": [
        {
          "name": "But how can I do that?",
          "link": "But how can I do that?",
          "pid": "28"
        }
      ],
      "name": "But it was faster than me.",
      "pid": "27",
      "position": {
        "x": "1740",
        "y": "2173"
      }
    },
    {
      "text": "How would I know?",
      "links": [
        {
          "name": "... ",
          "link": " ....",
          "pid": "29"
        }
      ],
      "name": "But how can I do that?",
      "pid": "28",
      "position": {
        "x": "1852",
        "y": "2298"
      }
    },
    {
      "text": "Okay, Okay, have you ever saw any SPACE scyfi fiction?",
      "links": [
        {
          "name": "SPACE... what?",
          "link": "space... what?",
          "pid": "30"
        }
      ],
      "name": " ....",
      "pid": "29",
      "position": {
        "x": "1972",
        "y": "2442"
      }
    },
    {
      "text": "... How could I explain...",
      "links": [
        {
          "name": "Okay... I think I know what is that...",
          "link": "Okay... I think I know what is that...",
          "pid": "31"
        }
      ],
      "name": "space... what?",
      "pid": "30",
      "position": {
        "x": "2084",
        "y": "2575"
      }
    },
    {
      "text": "Well, when that SPACE ship have to cover much SPACE, they do something named hyper SPACE travel.",
      "links": [
        {
          "name": "And how it helps me?",
          "link": "And how it helps me?",
          "pid": "32"
        }
      ],
      "name": "Okay... I think I know what is that...",
      "pid": "31",
      "position": {
        "x": "2202",
        "y": "2695"
      }
    },
    {
      "text": "I don't know, discover by yourself.",
      "links": [
        {
          "name": "UPGRADE",
          "link": " Tutorial 4",
          "pid": "33"
        }
      ],
      "name": "And how it helps me?",
      "pid": "32",
      "position": {
        "x": "2312",
        "y": "2844"
      }
    },
    {
      "text": "[[Tutorial4]]",
      "links": [
        {
          "name": "Tutorial4",
          "link": "Tutorial4",
          "pid": "34"
        }
      ],
      "name": " Tutorial 4",
      "pid": "33",
      "position": {
        "x": "2404",
        "y": "2961"
      }
    },
    {
      "text": "Are you there?",
      "links": [
        {
          "name": "Yeah, but I couldn't see anything",
          "link": "Yeah, but I couldn't see anything",
          "pid": "39"
        }
      ],
      "name": "Tutorial4",
      "pid": "34",
      "position": {
        "x": "2536",
        "y": "2837"
      }
    },
    {
      "text": "My light is like your gun, to use it, you just have do CLICK.",
      "links": [
        {
          "name": "What? ",
          "link": "What? ",
          "pid": "42"
        }
      ],
      "name": "Neeko...?",
      "pid": "35",
      "position": {
        "x": "3026",
        "y": "2415"
      }
    },
    {
      "text": "What do you mean?",
      "links": [
        {
          "name": "It's like if I heard Neeko's voice",
          "link": "It's like if I heard Neeko's voice",
          "pid": "41"
        },
        {
          "name": "Oh, just forget",
          "link": "Oh, just forget",
          "pid": "44"
        }
      ],
      "name": "But where is...? Doctor? What is going on??",
      "pid": "36",
      "position": {
        "x": "3552",
        "y": "1928"
      }
    },
    {
      "text": "It's a shame, I hoped it would be useful.\nAnyway, go there and KILL some bugs.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Nothing...",
      "pid": "37",
      "position": {
        "x": "4334",
        "y": "1978"
      }
    },
    {
      "text": "I see... I don't know what it means, but thank you for tell me that.\nYou are loyal.",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Something about the darkness",
      "pid": "38",
      "position": {
        "x": "4113",
        "y": "1677"
      }
    },
    {
      "text": "Me neither, you should, I don't know, shoot everywhere and try dash as faster as you can.",
      "links": [
        {
          "name": "You are right, I should've try this ",
          "link": "neeko",
          "pid": "40"
        },
        {
          "name": "I don't know if it works... ",
          "link": "neeko",
          "pid": "40"
        }
      ],
      "name": "Yeah, but I couldn't see anything",
      "pid": "39",
      "position": {
        "x": "2685",
        "y": "2674"
      }
    },
    {
      "text": "Don't let the darkness grow whitin you.\nAccept my light.",
      "links": [
        {
          "name": "Neeko...?",
          "link": "Neeko...?",
          "pid": "35"
        }
      ],
      "name": "neeko",
      "pid": "40",
      "position": {
        "x": "2860",
        "y": "2536"
      }
    },
    {
      "text": "It must be another lapse of memory!\nWhat did you hear?",
      "links": [
        {
          "name": "Nothing...",
          "link": "Nothing...",
          "pid": "37"
        },
        {
          "name": "Something about the darkness",
          "link": "Something about the darkness",
          "pid": "38"
        }
      ],
      "name": "It's like if I heard Neeko's voice",
      "pid": "41",
      "position": {
        "x": "3904",
        "y": "1985"
      }
    },
    {
      "text": "But instead of kill the others, you bring light to the world.\nThat is the RIGHT CLICK.",
      "links": [
        {
          "name": "Okay, I will try, but I have some questions for you",
          "link": "Okay, I will try, but I have some questions for you",
          "pid": "43"
        }
      ],
      "name": "What? ",
      "pid": "42",
      "position": {
        "x": "3196",
        "y": "2265"
      }
    },
    {
      "text": "What are you whaiting for? Go on and kill some bugs.",
      "links": [
        {
          "name": "But where is...? Doctor? What is going on??",
          "link": "But where is...? Doctor? What is going on??",
          "pid": "36"
        }
      ],
      "name": "Okay, I will try, but I have some questions for you",
      "pid": "43",
      "position": {
        "x": "3346",
        "y": "2136"
      }
    },
    {
      "text": "You are weird...\nDon't waist my time, go there and kill those creatures already!",
      "links": [
        {
          "name": "UPGRADE",
          "link": "END",
          "pid": "45"
        }
      ],
      "name": "Oh, just forget",
      "pid": "44",
      "position": {
        "x": "3664",
        "y": "1552"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END",
      "pid": "45",
      "position": {
        "x": "4489",
        "y": "1639"
      }
    }
  ]

func _ready():
	tutorial_scene = 0
	id = 4
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
