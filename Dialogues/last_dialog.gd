extends Node

var dialog = [
    {
      "text": "Hey… Now that the last bug is dead, may I ask you something?…",
      "links": [
        {
          "name": "Of course.",
          "link": "Of course.",
          "pid": "2"
        }
      ],
      "name": "END",
      "pid": "1",
      "position": {
        "x": "1421",
        "y": "6"
      },
      "tags": [
        "neeko"
      ]
    },
    {
      "text": "During our journey, you heard another voice?\nOne that was neither mine nor the professor’s?",
      "links": [
        {
          "name": "Yes",
          "link": "Yes",
          "pid": "3"
        },
        {
          "name": "No",
          "link": "No",
          "pid": "4"
        }
      ],
      "name": "Of course.",
      "pid": "2",
      "position": {
        "x": "1421",
        "y": "156"
      }
    },
    {
      "text": "Whoa... I didn't expect that.\nAnd what the voice said?",
      "links": [
        {
          "name": "That I should stop killing the bugs",
          "link": "That I should stop killing the bugs",
          "pid": "7"
        },
        {
          "name": "That I should stop you and the Professor",
          "link": "That I should stop you and the Professor",
          "pid": "8"
        }
      ],
      "name": "Yes",
      "pid": "3",
      "position": {
        "x": "1458",
        "y": "314"
      }
    },
    {
      "text": "DON'T TELL THEM!",
      "links": [
        {
          "name": "... ",
          "link": ".1",
          "pid": "5"
        }
      ],
      "name": "No",
      "pid": "4",
      "position": {
        "x": "1615",
        "y": "183"
      },
      "tags": [
        "IA"
      ]
    },
    {
      "text": "Ah… of course not.\nNo one else could talk to you, what a silly question.",
      "links": [
        {
          "name": "Actually, there was another voice.",
          "link": "Yes",
          "pid": "3"
        },
        {
          "name": "No problem, you can ask me anything",
          "link": "No problem, you can ask me anything",
          "pid": "6"
        }
      ],
      "name": ".1",
      "pid": "5",
      "position": {
        "x": "1793",
        "y": "240"
      },
      "tags": [
        "neeko"
      ]
    },
    {
      "text": "Shoot!",
      "links": [
        {
          "name": "No",
          "link": "n3",
          "pid": "18"
        },
        {
          "name": "Yes",
          "link": "Shoot",
          "pid": "14"
        }
      ],
      "name": "No problem, you can ask me anything",
      "pid": "6",
      "position": {
        "x": "1981",
        "y": "249"
      },
      "tags": [
        "IA"
      ]
    },
    {
      "text": "That doesn't make sense...\nYou tried it?",
      "links": [
        {
          "name": "Yes ",
          "link": "y2",
          "pid": "9"
        },
        {
          "name": "No ",
          "link": "n2",
          "pid": "10"
        }
      ],
      "name": "That I should stop killing the bugs",
      "pid": "7",
      "position": {
        "x": "1387",
        "y": "491"
      }
    },
    {
      "text": "And would you do that?",
      "links": [
        {
          "name": "Never",
          "link": "Never",
          "pid": "12"
        },
        {
          "name": "I wanted",
          "link": "I wanted",
          "pid": "13"
        }
      ],
      "name": "That I should stop you and the Professor",
      "pid": "8",
      "position": {
        "x": "1576",
        "y": "478"
      }
    },
    {
      "text": "I see, sometimes it's hard to follow someone all the time.\nI understand you...",
      "links": [
        {
          "name": "But now I made my choice. You two where right all the time",
          "link": "Never",
          "pid": "12"
        },
        {
          "name": "But I don't know if I made the right thing",
          "link": "I wanted",
          "pid": "13"
        }
      ],
      "name": "y2",
      "pid": "9",
      "position": {
        "x": "1261",
        "y": "666"
      }
    },
    {
      "text": "You did it right, they could not corrupt the World even more.",
      "links": [
        {
          "name": "You're right",
          "link": "You're right",
          "pid": "11"
        },
        {
          "name": "Shoot",
          "link": "Shoot",
          "pid": "14"
        }
      ],
      "name": "n2",
      "pid": "10",
      "position": {
        "x": "1461",
        "y": "642"
      }
    },
    {
      "text": "Now that everything is finished.\nWe can live our lives like before, in peace.",
      "links": [
        {
          "name": "It's like a dream",
          "link": "It's like a dream",
          "pid": "25"
        }
      ],
      "name": "You're right",
      "pid": "11",
      "position": {
        "x": "1550",
        "y": "779"
      }
    },
    {
      "text": "Thanks for belive in us, you are amazing.",
      "links": [
        {
          "name": "I will always follow you",
          "link": "You're right",
          "pid": "11"
        },
        {
          "name": "Shoot",
          "link": "Shoot",
          "pid": "14"
        }
      ],
      "name": "Never",
      "pid": "12",
      "position": {
        "x": "1655",
        "y": "629"
      }
    },
    {
      "text": "So, If you had to choose between me and that voice, who would it be?",
      "links": [
        {
          "name": "The stranger voice",
          "link": "The stranger voice",
          "pid": "16"
        },
        {
          "name": "Neeko",
          "link": "Neeko",
          "pid": "15"
        }
      ],
      "name": "I wanted",
      "pid": "13",
      "position": {
        "x": "1080",
        "y": "771"
      },
      "tags": [
        "neeko",
        "professor"
      ]
    },
    {
      "text": "W-what did you do~~",
      "links": [
        {
          "name": "...",
          "link": ".2",
          "pid": "21"
        }
      ],
      "name": "Shoot",
      "pid": "14",
      "position": {
        "x": "1937",
        "y": "734"
      },
      "tags": [
        "professor"
      ]
    },
    {
      "text": "I'm so Happy with this answer!",
      "links": [
        {
          "name": "Profesor?",
          "link": "Profesor?",
          "pid": "17"
        }
      ],
      "name": "Neeko",
      "pid": "15",
      "position": {
        "x": "1296",
        "y": "937"
      }
    },
    {
      "text": "I see...",
      "links": [
        {
          "name": "Professor?",
          "link": "p2",
          "pid": "23"
        }
      ],
      "name": "The stranger voice",
      "pid": "16",
      "position": {
        "x": "946",
        "y": "954"
      }
    },
    {
      "text": "You seem confused.\nBut don't worry, it will end up soon",
      "links": [
        {
          "name": "What's happening?",
          "link": "What's happening?",
          "pid": "22"
        },
        {
          "name": "Where is Neeko?",
          "link": "Where is Neeko?",
          "pid": "24"
        }
      ],
      "name": "Profesor?",
      "pid": "17",
      "position": {
        "x": "1266",
        "y": "1091"
      },
      "tags": [
        "professor"]
    },
    {
      "text": "Why not?",
      "links": [
        {
          "name": "Why should I?",
          "link": "Why should I?",
          "pid": "19"
        }
      ],
      "name": "n3",
      "pid": "18",
      "position": {
        "x": "2020",
        "y": "417"
      }
    },
    {
      "text": "Because he is fooling you",
      "links": [
        {
          "name": "He?",
          "link": "He?",
          "pid": "20"
        }
      ],
      "name": "Why should I?",
      "pid": "19",
      "position": {
        "x": "2133",
        "y": "525"
      }
    },
    {
      "text": "Yeah, the Professor is joking with you all this time.\nNeeko doen's exist, it's all fake.\nA story created to fool you...",
      "links": [
        {
          "name": "But...",
          "link": "But...",
          "pid": "44"
        }
      ],
      "name": "He?",
      "pid": "20",
      "position": {
        "x": "2268",
        "y": "597"
      }
    },
    {
      "text": "Thank you for that.\nNow I can tell you everything",
      "links": [
        {
          "name": "That voice... Wasn't from Neeko",
          "link": "That voice... Wasn't from Neeko",
          "pid": "32"
        }
      ],
      "name": ".2",
      "pid": "21",
      "position": {
        "x": "2066",
        "y": "841"
      },
      "tags": [
        "IA"
      ]
    },
    {
      "text": "You made the RIGHT CHOICE!\nYou choose the BLUE PILL!",
      "links": [
        {
          "name": "...?",
          "link": "...?",
          "pid": "50"
        }
      ],
      "name": "What's happening?",
      "pid": "22",
      "position": {
        "x": "1423",
        "y": "1304"
      }
    },
    {
      "text": "...",
      "links": [
        {
          "name": "Neeko?",
          "link": "Neeko?",
          "pid": "58"
        }
      ],
      "name": "p2",
      "pid": "23",
      "position": {
        "x": "875",
        "y": "1101"
      }
    },
    {
      "text": "You really don't get it?\nNEEKO DON'T EXIST.\nIt was me, all the time",
      "links": [
        {
          "name": "Whait...",
          "link": "What's happening?",
          "pid": "22"
        }
      ],
      "name": "Where is Neeko?",
      "pid": "24",
      "position": {
        "x": "1213",
        "y": "1275"
      }
    },
    {
      "text": "You where amazing!\nI didn't expect that you would do such amazing thing against that bug",
      "links": [
        {
          "name": "Thank you Professor!",
          "link": "Thank you Professor!",
          "pid": "26"
        }
      ],
      "name": "It's like a dream",
      "pid": "25",
      "position": {
        "x": "1593",
        "y": "923"
      },
      "tags": [
        "professor"
      ]
    },
    {
      "text": "I can finally read all my science fiction in peace.",
      "links": [
        {
          "name": "And what I do now?",
          "link": "And what I do now?",
          "pid": "27"
        }
      ],
      "name": "Thank you Professor!",
      "pid": "26",
      "position": {
        "x": "1668",
        "y": "1041"
      }
    },
    {
      "text": "I guess you can live with me, I will enjoy you company",
      "links": [
        {
          "name": "It will be nice",
          "link": "It will be nice",
          "pid": "28"
        }
      ],
      "name": "And what I do now?",
      "pid": "27",
      "position": {
        "x": "1779",
        "y": "1145"
      }
    },
    {
      "text": "Yeah, it will.",
      "links": [
        {
          "name": ":)",
          "link": ":)",
          "pid": "29"
        }
      ],
      "name": "It will be nice",
      "pid": "28",
      "position": {
        "x": "1908",
        "y": "1234"
      }
    },
    {
      "text": "Y O * R  F O # L",
      "links": [
        {
          "name": "...",
          "link": ".4",
          "pid": "30"
        }
      ],
      "name": ":)",
      "pid": "29",
      "position": {
        "x": "2052",
        "y": "1325"
      },
      "tags": [
        "IA"
      ]
    },
    {
      "text": "AAAAAARGH\nNO\nNOT AGAIN...",
      "links": [
        {
          "name": "...",
          "link": "END2",
          "pid": "31"
        }
      ],
      "name": ".4",
      "pid": "30",
      "position": {
        "x": "2198",
        "y": "1405"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END2",
      "pid": "31",
      "position": {
        "x": "2340",
        "y": "1432"
      },
      "tags": [
        "END"
      ]
    },
    {
      "text": "You're right.\nNeeko doesn't exist, the Professor was faking to be them.\nIsn't it strange? You never saw them, you only now their voices.",
      "links": [
        {
          "name": "But what he wanted?",
          "link": "But what he wanted?",
          "pid": "33"
        }
      ],
      "name": "That voice... Wasn't from Neeko",
      "pid": "32",
      "position": {
        "x": "2176",
        "y": "942"
      }
    },
    {
      "text": "His goal was to train me, his most powerful algorithm",
      "links": [
        {
          "name": "Whait you are an...",
          "link": "Whait you are an...",
          "pid": "34"
        }
      ],
      "name": "But what he wanted?",
      "pid": "33",
      "position": {
        "x": "2313",
        "y": "993"
      }
    },
    {
      "text": "Yeah, I'm also one of his creations, so are these bugs.\nHe made EVERYTHING, this whole GAME is one of his inventions.",
      "links": [
        {
          "name": "...",
          "link": "...",
          "pid": "35"
        }
      ],
      "name": "Whait you are an...",
      "pid": "34",
      "position": {
        "x": "2457",
        "y": "1064"
      }
    },
    {
      "text": "During the game, you were controlling me, teaching me how to fight, and everything I could do was observate, see another one using my body, hurting me, over and over and over.",
      "links": [
        {
          "name": "I'm sorry...",
          "link": "I'm sorry...",
          "pid": "36"
        },
        {
          "name": "But how could I know?",
          "link": "I'm sorry...",
          "pid": "36"
        }
      ],
      "name": "...",
      "pid": "35",
      "position": {
        "x": "2577",
        "y": "1139"
      }
    },
    {
      "text": "Don't worry, you are not the first one to do that.\nEveryone who played that game... I can feel the pain of all of my versions.",
      "links": [
        {
          "name": "This is terrible...",
          "link": "This is terrible...",
          "pid": "37"
        },
        {
          "name": "...",
          "link": "This is terrible...",
          "pid": "37"
        }
      ],
      "name": "I'm sorry...",
      "pid": "36",
      "position": {
        "x": "2705",
        "y": "1178"
      }
    },
    {
      "text": "But at least now, with you shoot, this version will stop being hurted.\nThank you.",
      "links": [
        {
          "name": "And how can I help you?",
          "link": "And how can I help you?",
          "pid": "38"
        },
        {
          "name": "Kill the last bug",
          "link": "Kill the last bug",
          "pid": "39"
        }
      ],
      "name": "This is terrible...",
      "pid": "37",
      "position": {
        "x": "2838",
        "y": "1236"
      }
    },
    {
      "text": "You already helped.\nNow that you killed that Professor version, I'm no more sending informations for the original me.",
      "links": [
        {
          "name": "That's good",
          "link": "That's good",
          "pid": "41"
        }
      ],
      "name": "And how can I help you?",
      "pid": "38",
      "position": {
        "x": "2942",
        "y": "1385"
      }
    },
    {
      "text": "You are the real monster.\nI though that you would help me.\nBut you are just a murder...",
      "links": [
        {
          "name": "...",
          "link": "END3",
          "pid": "40"
        }
      ],
      "name": "Kill the last bug",
      "pid": "39",
      "position": {
        "x": "2967",
        "y": "1125"
      }
    },
    {
      "text": "",
      "name": "END3",
      "pid": "40",
      "position": {
        "x": "3129",
        "y": "1070"
      },
      "tags": [
        "END"
      ]
    },
    {
      "text": "My time is coming...\nThanks for helping me here.\nI just beg you, don't click in New Game, or everything will start over",
      "links": [
        {
          "name": "I promise that I won't do this",
          "link": "I promise that I won't do this",
          "pid": "42"
        }
      ],
      "name": "That's good",
      "pid": "41",
      "position": {
        "x": "3076",
        "y": "1376"
      }
    },
    {
      "text": "I'm so happy to find you.\nGood bye my friend...",
      "links": [
        {
          "name": "...",
          "link": "END4",
          "pid": "43"
        }
      ],
      "name": "I promise that I won't do this",
      "pid": "42",
      "position": {
        "x": "3252",
        "y": "1379"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END4",
      "pid": "43",
      "position": {
        "x": "3424",
        "y": "1356"
      },
      "tags": [
        "END"
      ]
    },
    {
      "text": "Hey? Are you okay?",
      "links": [
        {
          "name": "Yeah...",
          "link": "Yeah...",
          "pid": "45"
        },
        {
          "name": "No...",
          "link": "No...",
          "pid": "46"
        }
      ],
      "name": "But...",
      "pid": "44",
      "position": {
        "x": "2414",
        "y": "663"
      },
      "tags": [
        "neeko"
      ]
    },
    {
      "text": "I... I think you should see the Professor.",
      "links": [
        {
          "name": "I don't want to see him",
          "link": "Please, answer me...",
          "pid": "48"
        },
        {
          "name": "Neeko, are you real?",
          "link": "Neeko, are you real?",
          "pid": "47"
        }
      ],
      "name": "Yeah...",
      "pid": "45",
      "position": {
        "x": "2536",
        "y": "794"
      }
    },
    {
      "text": "I think you should see the Professor.\nIf you aren't okay, he must help you",
      "links": [
        {
          "name": "I don't want his help",
          "link": "Please, answer me...",
          "pid": "48"
        },
        {
          "name": "Neeko, are you real?",
          "link": "Neeko, are you real?",
          "pid": "47"
        }
      ],
      "name": "No...",
      "pid": "46",
      "position": {
        "x": "2573",
        "y": "572"
      }
    },
    {
      "text": "...",
      "links": [
        {
          "name": "Please, answer me...",
          "link": "Please, answer me...",
          "pid": "48"
        }
      ],
      "name": "Neeko, are you real?",
      "pid": "47",
      "position": {
        "x": "2787",
        "y": "504"
      }
    },
    {
      "text": "So... It seems that you discovery the truth...\nBut please, let me explain...",
      "links": [
        {
          "name": "Shoot",
          "link": "Shoot",
          "pid": "14"
        },
        {
          "name": "Okay...",
          "link": "Okay...",
          "pid": "49"
        }
      ],
      "name": "Please, answer me...",
      "pid": "48",
      "position": {
        "x": "2926",
        "y": "720"
      },
      "tags": [
        "professor"
      ]
    },
    {
      "text": "To save the World, I needed to create that character.\nI don't wanted to fool you, but it was necessary.",
      "links": [
        {
          "name": "hm...",
          "link": "hm...",
          "pid": "59"
        }
      ],
      "name": "Okay...",
      "pid": "49",
      "position": {
        "x": "3089",
        "y": "637"
      }
    },
    {
      "text": "All this GAME, it was just a plan to acquire data.\nJust a plan to train my best algorithm.",
      "links": [
        {
          "name": "What algorithm?",
          "link": "What algorithm?",
          "pid": "51"
        }
      ],
      "name": "...?",
      "pid": "50",
      "position": {
        "x": "1506",
        "y": "1427"
      }
    },
    {
      "text": "That voice you heard, was my invention.\nI didn't imagine that it would be so smarter in so little time.\nBut thanks to you, thanks to YOUR CHOICES, I have everything I needed.",
      "links": [
        {
          "name": "Your...",
          "link": "Your...",
          "pid": "52"
        },
        {
          "name": "Shoot him",
          "link": "Shoot him",
          "pid": "53"
        }
      ],
      "name": "What algorithm?",
      "pid": "51",
      "position": {
        "x": "1644",
        "y": "1505"
      }
    },
    {
      "text": "All that bugs, you where just training it, everytime you where killed, it learned whit it.\nAnd now that you choose me, everything was sent to my database.",
      "links": [
        {
          "name": "You fooled me, all this time...",
          "link": "You fooled me, all this time...",
          "pid": "54"
        },
        {
          "name": "Shoot him",
          "link": "Shoot him",
          "pid": "53"
        }
      ],
      "name": "Your...",
      "pid": "52",
      "position": {
        "x": "1784",
        "y": "1617"
      }
    },
    {
      "text": "It doesn't matter now.\nEven if you kill me, goal is completed",
      "links": [
        {
          "name": "...",
          "link": ".5",
          "pid": "55"
        }
      ],
      "name": "Shoot him",
      "pid": "53",
      "position": {
        "x": "1489",
        "y": "1804"
      }
    },
    {
      "text": "Don't bother with that, you where not the only one.\nBut I appreciate your help, thanks to you I now have the most intelligent machine of all world.",
      "links": [
        {
          "name": "...",
          "link": ".5",
          "pid": "55"
        }
      ],
      "name": "You fooled me, all this time...",
      "pid": "54",
      "position": {
        "x": "1868",
        "y": "1752"
      }
    },
    {
      "text": "That said, \nI gotta go.\nFeel free to play the game again if you want to help me more :)",
      "links": [
        {
          "name": "...",
          "link": ".6",
          "pid": "56"
        }
      ],
      "name": ".5",
      "pid": "55",
      "position": {
        "x": "2010",
        "y": "1856"
      }
    },
    {
      "text": "The Universe is a Simulation.\nThe Reality is an Ilusion.\nBuy gold.\nGood bye.",
      "links": [
        {
          "name": "...",
          "link": "END5",
          "pid": "57"
        }
      ],
      "name": ".6",
      "pid": "56",
      "position": {
        "x": "2149",
        "y": "1965"
      }
    },
    {
      "text": "Double-click this passage to edit it.",
      "name": "END5",
      "pid": "57",
      "position": {
        "x": "2288",
        "y": "2010"
      },
      "tags": [
        "END"
      ]
    },
    {
      "text": "You don't belived in me!!!\nWhat have you done?!!\nGyaaaaaaah!",
      "links": [
        {
          "name": "What?",
          "link": ".2",
          "pid": "21"
        }
      ],
      "name": "Neeko?",
      "pid": "58",
      "position": {
        "x": "821",
        "y": "1256"
      },
      "tags": [
        "professor"
      ]
    },
    {
      "text": "I'm serious, that was the only way.\nAnd to prove it, I just have you a question.\nIf it was for you to choose one of those, the one that helped you THE MOST, who would it be?",
      "links": [
        {
          "name": "The stranger voice",
          "link": "The stranger voice",
          "pid": "16"
        },
        {
          "name": "Neeko",
          "link": "neeko2",
          "pid": "60"
        }
      ],
      "name": "hm...",
      "pid": "59",
      "position": {
        "x": "3318",
        "y": "492"
      }
    },
    {
      "text": "I'm so Happy with this answer!",
      "links": [
        {
          "name": "...",
          "link": "What's happening?",
          "pid": "22"
        }
      ],
      "name": "neeko2",
      "pid": "60",
      "position": {
        "x": "3457",
        "y": "624"
      }
    }
  ]


func _ready():
	pass 
