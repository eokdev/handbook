// ignore_for_file: file_names, duplicate_ignore, avoid_function_literals_in_foreach_calls
// ignore_for_file: file_names, unnecessary_overrides, unused_import, unused_local_variable, avoid_print, avoid_renaming_method_parameters, annotate_overrides
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:handbook/anotherListClass.dart';

import 'package:http/http.dart' as https;
import 'restApi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
String handbookDatas= """
[
    {
        "id": 6,
        "chapter": "CHAPTER ONE",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 150,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "General Information",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 288,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University was established by the Christ Apostolic Church following a divine directive to its former President, Pastor E.H.L. Olusheye. The Christ Apostolic Church is a wholly indigenous Christian Pentecostal denomination with no foreign affiliations but has spread to the 68 West and Southern Africa, Europe, the United States of 68 America, Canada etc. Christ Apostolic Church is not a new comer to education project in Nigeria. It established its first primary school in 1934 and by 1979, when the state governments took over the administration and financing of primary and post primary schools, the Church had established over 150 educational institutions at various levels all over the country.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 150,
                            "name": "General Information",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 151,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "The Name Joseph Ayo Babalola University",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 289,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Christ Apostolic Church believes strongly in the leading of the Holy Spirit in its programmes and activities. Just as the decision to establish the University was inspired by the Holy Spirit, the name of the University was divinely given to immortalize one of the greatest revivalists and apostles of God in this age, Apostle Joseph Ayo Babalola. He was born at Odo- Owa in Kwara State but his call was at Ikeji Arakeji, Osun State. For over three decades, his missionary activities traversed the South-Western part of the country, Kwara State and Ghana preaching the word of God and healing the sick and the afflicted. His revival resulted in a mass movement that attracted the attention of the then colonial government, which monitored his movements and filed annual reports on his activities to the British Government beyond 1940s. Apostle Joseph Ayo Babalola was reputed to have raised the dead; he became a patriarch of Christ Apostolic Church, the mother of Pentecostal Churches in Nigeria.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 151,
                            "name": "The Name Joseph Ayo Babalola University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 152,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Location of Joseph Ayo Babalola University",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 290,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is located at Ikeji Arakeji on the spot where Apostle Joseph Ayo Babalola received his call. It covers over 160 hectares of land, part of which was used as Christ Apostolic Church International Miracle Camp. Ikeji Arakeji is located in Osun State, along Ilesa-Akure Road. The Campus is on a virgin land but close to three major cities namely, Osogbo, Ilesa and Akure. Apart from its accessibility to other cities in the South western part of the country, the Ilesa-Akure road is a popular route to the northern and eastern parts of the country. Joseph Ayo Babalola University is about three-hour drive to the nation's largest international airport in Lagos, the commercial capital of Nigeria. It is close enough to a number of cities where staff and students could carry out requisite activities.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 152,
                            "name": "Location of Joseph Ayo Babalola University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 291,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Ikeji Arakeji provides a serene atmosphere for scholarship; its closeness to the Church prayer camp also provides a suitable environment for meditation and communion with the Creator. Indeed its virtual isolation from the hurly burly of city life, makes it ideal for proper academic activities, including research, and character training.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 152,
                            "name": "Location of Joseph Ayo Babalola University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 153,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Objectives of the University",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 292,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Since the take-over of private schools by governments, especially the mission schools in Nigeria, and the secularization of education, the moral tone of the products of Nigerian educational system had left much to be desired. The teaching of Civic, which the apostles of secularism in education adopted in place of religious instruction, has proved ineffective in producing God fearing citizens. Many public institutions at various levels have become breeding grounds for cultists, criminals and other miscreants.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 153,
                            "name": "Objectives of the University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 293,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The establishment of Joseph Ayo Babalola University is intended to provide a favourable environment for the nurture of God-fearing, hard working, patriotic and selfless citizens. In addition to the conventional duties of acquiring and dissemination of knowledge, the University will distinguish itself by:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 153,
                            "name": "Objectives of the University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 294,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 153,
                            "name": "Objectives of the University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [
                            {
                                "id": 863,
                                "name": "Inculcating high ethical standard among its students;",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 294
                            },
                            {
                                "id": 864,
                                "name": "Producing self-reliant, self-employed graduates, who will reduce rather than inflate the unemployment market;",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 294
                            },
                            {
                                "id": 865,
                                "name": "Putting its standard abreast of the latest information and communication technology. These objectives have been reflected in the University Motto and Logo.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 294
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 154,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Motto",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 295,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Motto of the University is For Knowledge and Godly Service. The Motto encapsulates the total philosophy of the University i.e. to seek and impart knowledge with high ethical g standard to those who pass through it, thereby empowering them to provide self-less service to the country and humanity.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 154,
                            "name": "University Motto",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 155,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Logo",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 296,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Similarly, the logo has been designed to reflect the University's objectives. It consists of four colours: golden yellow, red, leaf green and sky blue. The golden yellow signifies crown and royalty, an indication of the leadership and enviable status that",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 155,
                            "name": "University Logo",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 297,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is destined to hold within the world of academia. Blue portrays love; the circular shape of the logo also portrays endless love, that is, the love of God to mankind and a reminder of God's injunction to mankind to love one another. With love, Nigeria will be rid of all societal ills: greed, indiscipline, intolerance, armed robbery, corruption, political assassination, cultism etc.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 155,
                            "name": "University Logo",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 298,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The green colour symbolizes growth and productivity, which are in line with the objectives of the University, i.e. training of citizens to be mature, productive and self-reliant that will love one another and live in peace. Green also symbolizes agriculture, a core programme of the institution. The open book placed within the logo is a symbol of knowledge, the search and dissemination of which are the preoccupations of the University. The main agricultural product is cocoa; hence the location of two cocoa trees with pods within the logo, to emphasize the importance the University places on the study and practice of Agriculture.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 155,
                            "name": "University Logo",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 299,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The sponsors of Joseph Ayo Babalola University intend to use education to bring about moral regeneration, godliness, selfless leadership, positive attitude to work and dignity of labour, self reliance, mutual understanding and love among ethnic, tribal and religious groups.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 155,
                            "name": "University Logo",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 156,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Our Vision",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 300,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is planned to be a private University of international standard, which will be noted for its clear and unique focus, as well as specialized programmes. It will distinguish itself within the Nigerian University community for intellectual break-through and relevance in national development.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 156,
                            "name": "Our Vision",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 157,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Our Mission",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 301,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University will provide teaching, research and service that would encourage learning and stimulate academic exchange at both national and international fora.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 157,
                            "name": "Our Mission",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 158,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Our Philosophy",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 302,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Taking cognizance of the unacceptably high rate of unemployment of university graduates in the country, Joseph Ayo Babalola University intends to give all its graduates, the capacity for self employment, thereby making them self reliant and self sustaining, in addition to turning them into an effective army of human capital for the nation and vanguard in the war against societal ills.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 158,
                            "name": "Our Philosophy",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 303,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is determined not only to disseminate available knowledge to its students but would develop their intellect and enquiring minds which would lead to serious research activities in all aspects of knowledge, general, economic, political, scientific and technological, so as to help Nigeria out of the scourge of under-development and place her within the comity of advanced countries.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 158,
                            "name": "Our Philosophy",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 304,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University would encourage cooperation with other universities within and outside the country, particularly with its counterparts in advanced countries of the world, through student and staff exchange programmes. The University will exploit the benefit of globalization, especially in the area of information communication technology, so as to keep abreast of the latest developments in science and technology, in order to enhance the pace of development.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 158,
                            "name": "Our Philosophy",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 159,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Residence",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 305,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is a fully residential Univers All students are therefore expected to live in the halls residence provided by the University. This will ensure f participation in all academic and co-curricula activities. hoped that by the end of your stay on campus, you would to 2.1 only have passed through the University, the University wok have passed through you. Apart from giving you soun academic education and professional expertise, it is the determination of the authorities of Joseph Ayo Babalol University, that you leave the University as decent culture ladies and gentlemen.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 159,
                            "name": "Residence",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 160,
                "category": {
                    "id": 6,
                    "chapter": "CHAPTER ONE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Campus",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 306,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "You are welcome to Joseph Ayo Babalola University Campus Ikeji Arakeji, Osun State. The University Authorities have pu together academic, spiritual and social activities that would give you a fulfilled, challenging and active stay on Campus.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 160,
                            "name": "University Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 6
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 7,
        "chapter": "CHAPTER TWO",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 161,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Administrative Organ",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 307,
                        "title": "The administrative organs for the governance of the University  are as follows:",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 161,
                            "name": "Administrative Organ",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 866,
                                "name": "The Board of Trustees",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 307
                            },
                            {
                                "id": 867,
                                "name": "The Council and its Committees",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 307
                            },
                            {
                                "id": 868,
                                "name": "The Senate and its Committees",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 307
                            },
                            {
                                "id": 869,
                                "name": "The Congregation and",
                                "number": "(iv)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 307
                            },
                            {
                                "id": 870,
                                "name": "The Convocation",
                                "number": "(v)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 307
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 162,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Board of Trustees",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 309,
                        "title": "Constitution",
                        "sub_title": null,
                        "number": null,
                        "body": "The President, Christ Apostolic Church, acting in consultation with the General Executive Council, is empowered to constitute, appoint, remove and replace members of the Board of Trustees of the University. The Board of Trustees of the University consists of nine members.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 162,
                            "name": "Board of Trustees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 310,
                        "title": "Responsibilities",
                        "sub_title": null,
                        "number": null,
                        "body": "It shall be the responsibilities of the Board of Trustees to:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 162,
                            "name": "Board of Trustees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 871,
                                "name": "hold, transfer, assign or otherwise dispose of any property or interest therein, belonging to or held for the benefit of the institution.",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            },
                            {
                                "id": 872,
                                "name": "raise funds, receive gifts, donations, bequests, endowments and the like; and apply same in the interest of the institution through the Governing Council of the University.",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            },
                            {
                                "id": 873,
                                "name": "determine or approve recommendations from Council on the general development policies and goals of the University.",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            },
                            {
                                "id": 874,
                                "name": "approve quinquennial programmes for the University in line with the overall aims and objectives of the University.",
                                "number": "(iv)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            },
                            {
                                "id": 875,
                                "name": "appoint and determine the terms and conditions of service of the Chairman and members of the Governing Council of the University.",
                                "number": "(v)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            },
                            {
                                "id": 876,
                                "name": "consider the annual report of the University (Teaching and non-teaching) including the audited account of the University with relevant inputs from the Management, Senate and Council of the University.",
                                "number": "(vi)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 310
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 163,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Council and its Committees",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 311,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Subject to powers conferred on the Board of Trustees, the Council shall be the governing body of the University and shall be charged with the general control and superintendence of the policy, finances and property of the University, including its public relations.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 163,
                            "name": "Council and its Committees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 312,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Council operates with a number of Committees including:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 163,
                            "name": "Council and its Committees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 877,
                                "name": "The Finance and General Purposes Committee",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 312
                            },
                            {
                                "id": 878,
                                "name": "The Tenders Board",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 312
                            },
                            {
                                "id": 879,
                                "name": "Development Committee",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 312
                            },
                            {
                                "id": 880,
                                "name": "Audit Committee and Budget Committee",
                                "number": "(iv)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 312
                            },
                            {
                                "id": 881,
                                "name": "Three Appointment Committees in charge of the appointments and promotions of Junior, Senior Non- Teaching and Teaching Staff.",
                                "number": "(v)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 312
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 164,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Senate",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 313,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "It is the responsibility of Senate to organize and control:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 164,
                            "name": "Senate",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 882,
                                "name": "the teaching activities of the University;",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 313
                            },
                            {
                                "id": 883,
                                "name": "the admission to undergraduate and post-graduate courses; and",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 313
                            },
                            {
                                "id": 884,
                                "name": "the promotion of research at the University.",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 313
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 165,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Congregation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 314,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Congregation consists of:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 165,
                            "name": "Congregation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 885,
                                "name": "the Vice Chancellor",
                                "number": "(a)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            },
                            {
                                "id": 886,
                                "name": "the Deputy Vice Chancellor",
                                "number": "(b)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            },
                            {
                                "id": 887,
                                "name": "the Registrar",
                                "number": "(c)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            },
                            {
                                "id": 888,
                                "name": "the Bursar and",
                                "number": "(d)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            },
                            {
                                "id": 889,
                                "name": "full time members of the academic staff",
                                "number": "(e)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            },
                            {
                                "id": 890,
                                "name": "every member of the administrative staff who holds a degree of any University recognized by the Vice Chancellor, not being an honorary degree.",
                                "number": "(f)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 314
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 315,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Congregation meets at least once in a semester to discuss the general welfare of staff under the chairmanship of the Vice Chancellor. The Congregation is required to appoint one of its members to represent it in Council.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 165,
                            "name": "Congregation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 166,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Convocation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 316,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Convocation consists of:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 166,
                            "name": "Convocation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [
                            {
                                "id": 891,
                                "name": "all Principal Officers of the University",
                                "number": "(a)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 316
                            },
                            {
                                "id": 892,
                                "name": "all teaching staff of the University;",
                                "number": "(b)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 316
                            },
                            {
                                "id": 893,
                                "name": "all graduates of the University registered in the Register of Members of Convocation in accordance with the relevant laws.",
                                "number": "(c)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 316
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 317,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Chancellor shall be the Chairman at the meetings of Convocation while present and in his absence the Vice Chancellor shall preside.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 166,
                            "name": "Convocation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 318,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Convocation has the responsibility of appointing one of its members to represent it on Council. It is also the responsibility of Convocation to meet at special session to award the various degrees, awards and prizes of the University to deserving persons.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 166,
                            "name": "Convocation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 167,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Principal Officers of the University",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 319,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The following are the Principal Officers of the University and their duties:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 167,
                            "name": "Principal Officers of the University",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 29,
                                "name": "The Visitor",
                                "body": "The Visitor is the Chairman, Board of Trustees acting in consultation with the Board. It shall be the responsibility of the Visitor to appoint a panel, at least once in five years, to look into the affairs of the University, to determine whether the vision, mission and objectives of the University are being met. It shall also be the responsibility of the Visitor, acting on behalf of the Board of Trustees, to raise a panel to investigate any allegation of wrong doing against anybody or bodies, organ(s) or the Management of the University.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 30,
                                "name": "The Chancellor",
                                "body": "Primarily, the Chancellor shall be the Chairman at all meetings of Convocation especially, the special meetings of Convocation for the award of University degrees.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 31,
                                "name": "Pro Chancellor/Chairman of Council",
                                "body": "The Pro Chancellor shall be the Chairman of the Governing Council, the Finance and General Purposes Committee, the Tenders Board and any other Committee so designated by Council.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 32,
                                "name": "Vice Chairman, Governing Council",
                                "body": "The Laws of Joseph Ayo Babalola University provides for the appointment of a Vice Chairman of the Governing Council. He acts as Chairman of the Council and other Committees listed under 2.6.3 in the absence of the Chairman. He is also substantive Chairman of a number of Committees as determined by Council, particularly, the Projects Implementation Committee.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 33,
                                "name": "Vice Chancellor",
                                "body": "The Vice Chancellor has the general function of directing the activities of the University. He is the Chief Executive and Academic Officer of the University and Chairman of Senate and Congregation. The Vice Chancellor also has responsibility for the discipline of students.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 34,
                                "name": "Registrar",
                                "body": "The Registrar is the Chief Administrative Officer of the University and shall be responsible to the Vice Chancellor for the day to day administrative work of the University except as regards matters for which the Bursar is responsible.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 35,
                                "name": null,
                                "body": "The Registrar is the Secretary to the Board of Trustees, Council, Senate, Congregation and Convocation. custodian of University records. He is also the custodian of University records.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 36,
                                "name": "Bursar",
                                "body": "The Bursar is the Chief Financial Officer of the University and shall be responsible to the Vice Chancellor for the day to day administration and control of the financial affairs of the University.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            },
                            {
                                "id": 37,
                                "name": "University Librarian",
                                "body": "The University Librarian is responsible to the Vice Chancellor for the administration of the University Library and the coordination of all Library services in the University and its Campuses, Colleges, Study centres and other teaching or research units.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 319
                            }
                        ]
                    }
                ]
            },
            {
                "id": 168,
                "category": {
                    "id": 7,
                    "chapter": "CHAPTER TWO",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Organization of Academic and Research Activities",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 320,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 38,
                                "name": "Collegiate Systems",
                                "body": "The University runs a collegiate system. There are seven (7) approved Colleges and thirty three (34) Departments. The Dean is in charge of every College, while the Heads of Departments take charge of the Departments.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 320
                            },
                            {
                                "id": 39,
                                "name": "Board of Studies",
                                "body": "The Board of Studies comprises all teaching staff within a College. The Board is charged with the responsibility for the control and organization of academic activities within the College. When the Board meets for the purpose of considering examination results, it becomes the Board of Examiners.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 320
                            },
                            {
                                "id": 40,
                                "name": null,
                                "body": "The Vice Chancellor is the de jure Chairman of every Board of Studies/Examiners. However, in practice, the Dean, is the de facto Chairman to whom the Vice Chancellor delegates his power as Chairman.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 320
                            }
                        ]
                    },
                    {
                        "id": 321,
                        "title": "Available Academic Programmes",
                        "sub_title": null,
                        "number": null,
                        "body": "The following are the available degree programmes in the University;",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 322,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 41,
                                "name": null,
                                "body": "College of Agriculture and Natural Sciences",
                                "number": "1.",
                                "is_number": true,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 42,
                                "name": null,
                                "body": "Department of Agriculture with degree options in (a) Agricultural Economics and Extension Services.",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 43,
                                "name": null,
                                "body": "Department of Food Science and Technology.",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 44,
                                "name": null,
                                "body": "Hotel Management and Tourism",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 45,
                                "name": null,
                                "body": "Department of Biological Sciences (with degree options in Microbiology).",
                                "number": "(iv)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 46,
                                "name": null,
                                "body": "Department of Chemical Sciences (with degree options in Biochemistry and Industrial Chemistry)",
                                "number": "(v)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            },
                            {
                                "id": 47,
                                "name": null,
                                "body": "Department of Computer Science",
                                "number": "(vi)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 322
                            }
                        ]
                    },
                    {
                        "id": 323,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 48,
                                "name": null,
                                "body": "College of Environmental Sciences",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 323
                            },
                            {
                                "id": 49,
                                "name": null,
                                "body": "Department of Architecture",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 323
                            },
                            {
                                "id": 50,
                                "name": null,
                                "body": "Department of Estate Management",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 323
                            },
                            {
                                "id": 51,
                                "name": null,
                                "body": "Department of Building and Quantity Survey",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 323
                            }
                        ]
                    },
                    {
                        "id": 324,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 52,
                                "name": null,
                                "body": "College of Humanities and Social Sciences",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 53,
                                "name": null,
                                "body": "Department of English (with degree options in English Language and Literature in English).",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 54,
                                "name": null,
                                "body": "Department of History and International Studies",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 55,
                                "name": null,
                                "body": "Department of Philosophy and Religious Studies",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 56,
                                "name": null,
                                "body": "Department of Economics",
                                "number": "(iv)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 57,
                                "name": null,
                                "body": "Department of Mass Communication",
                                "number": "(v)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            },
                            {
                                "id": 58,
                                "name": null,
                                "body": "Department of Political Science with option in International Relations and Public Administration",
                                "number": "(vi)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 324
                            }
                        ]
                    },
                    {
                        "id": 325,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 59,
                                "name": null,
                                "body": "College of Health Sciences",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 325
                            },
                            {
                                "id": 60,
                                "name": null,
                                "body": "Department of Nursing Science",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 325
                            },
                            {
                                "id": 61,
                                "name": null,
                                "body": "Department of Medical Laboratory Science",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 325
                            }
                        ]
                    },
                    {
                        "id": 326,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 62,
                                "name": null,
                                "body": "College of Management Sciences",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 326
                            },
                            {
                                "id": 63,
                                "name": null,
                                "body": "Department of. Accounting",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 326
                            },
                            {
                                "id": 64,
                                "name": null,
                                "body": "Department of Business Administration (with degree options in Industrial Relations and Human Resources Management",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 326
                            },
                            {
                                "id": 65,
                                "name": null,
                                "body": "Department of Entrepreneurship",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 326
                            },
                            {
                                "id": 66,
                                "name": null,
                                "body": "Department of Insurance and Actuarial Science",
                                "number": "(iv)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 326
                            }
                        ]
                    },
                    {
                        "id": 327,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 67,
                                "name": null,
                                "body": "College of Law",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 327
                            },
                            {
                                "id": 68,
                                "name": null,
                                "body": "Department of Jurisprudence and Public Law",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 327
                            },
                            {
                                "id": 69,
                                "name": null,
                                "body": "Department of Private and Commercial Law",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 327
                            }
                        ]
                    },
                    {
                        "id": 328,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 168,
                            "name": "Organization of Academic and Research Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 7
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 70,
                                "name": null,
                                "body": "College of Postgraduate Studies",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 71,
                                "name": null,
                                "body": "Department of Philosophy and Religious Studies",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 72,
                                "name": null,
                                "body": "Department of Food Science and Technology",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 73,
                                "name": null,
                                "body": "Department of Architecture",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 74,
                                "name": null,
                                "body": "Department of English",
                                "number": "(iv)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 75,
                                "name": null,
                                "body": "Department of History and International Studies",
                                "number": "(v)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 76,
                                "name": null,
                                "body": "Department of Biological Sciences",
                                "number": "(vi)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 77,
                                "name": null,
                                "body": "Department of Chemical Sciences",
                                "number": "(vii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 78,
                                "name": null,
                                "body": "Department of Accounting",
                                "number": "(viii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 79,
                                "name": null,
                                "body": "Department of Business Administration",
                                "number": "(ix)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 80,
                                "name": null,
                                "body": "Department of Economics",
                                "number": "(x)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            },
                            {
                                "id": 81,
                                "name": null,
                                "body": "Department of Mass Communication",
                                "number": "(xi)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 328
                            }
                        ]
                    }
                ]
            }
        ]
    },
    {
        "id": 8,
        "chapter": "CHAPTER THREE",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 169,
                "category": {
                    "id": 8,
                    "chapter": "CHAPTER THREE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Spiritual Life",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 170,
                "category": {
                    "id": 8,
                    "chapter": "CHAPTER THREE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Objectives",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 329,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The University is as concerned with students' academic life, as it is with their spiritual life. At the height of the revival of Apostle Joseph Ayo Babalola, members of Christ Apostolic Church were sought for in both private and public sectors because of their honesty, integrity, loyalty and commitment to their employers. The trend has been on the decline, not only within the Christ Apostolic Church, but more so within the nation; these values are hard to come by. One of the objectives of Joseph Ayo Babalola University is to restore these qualities, associated with Apostle Joseph Ayo Babalola and indeed the authentic tenets of Christ Apostolic Church, in youths, who would become catalysts in changing the fortune of the Nation. The University will inculcate in the students those attributes described as the fruits of the spirit: love, joy, peace, long- suffering, gentleness, goodness, faith, meekness, and temperance (Galatians 5:22 and 23). These are the virtues needed by Nigerians to have peaceful coexistence, and prosperity for all. What majority of Nigerians glory in, in this age, are selfishness, aggrandizement and all forms of immorality. In our public institutions, officially, religion must not be mixed with academics; the result of this policy all forms of immorality, cultism, indecent dressing - all in the name of fashion-exploitation, sexual harassment and more.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 170,
                            "name": "Objectives",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 8
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 171,
                "category": {
                    "id": 8,
                    "chapter": "CHAPTER THREE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Religious Activities on Campus",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 330,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "At Joseph Ayo Babalola University, Christian religion, as espoused by the Holy Bible and by Apostle Joseph Ayo Babalola, will form the corner stone of academic life. Therefore every student will be expected to participate in the following organized religious activities:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 171,
                            "name": "Religious Activities on Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 8
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 331,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 171,
                            "name": "Religious Activities on Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 8
                        },
                        "list_contents": [
                            {
                                "id": 894,
                                "name": "Morning Devotion (Mondays to Fridays)                     6.00 a.m.-6.30a.m.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 895,
                                "name": "Sunday School  8.00 a.m.-9.00 a.m.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 896,
                                "name": "Sunday Service 9.00 a.m.-11.30a.m.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 897,
                                "name": "University Mid-week Prayer",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 898,
                                "name": "Wednesdays (Staff and Students)  3.00 p.m.-4.00 p.m.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 899,
                                "name": "Friday Tarrying meeting for the Holy Ghost 5.00 p.m.-7.00p.m.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            },
                            {
                                "id": 900,
                                "name": "Weekend with Jesus (Friday to Sunday)  Once in a semester",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 331
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 332,
                        "title": "Attendance at Religious Meetings",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 171,
                            "name": "Religious Activities on Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 8
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 82,
                                "name": null,
                                "body": "All students and staff are expected to participate in these programmes. Excuse for absence by students (usually on account of ill-health) must receive prior approval from the University Chaplain and Medical Centre in writing. A copy of such excuse must be submitted to the Chaplaincy. Staff must not organize any lecture during religious meeting. Halls of residence, Library, Cafeteria and the Academic buildings shall be closed at the commencement of religious activities.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 332
                            }
                        ]
                    },
                    {
                        "id": 333,
                        "title": "Organization of Spiritual Activities",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 171,
                            "name": "Religious Activities on Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 8
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 83,
                                "name": null,
                                "body": "There shall be a University Chaplain who shall be a Spirit-led Christ Apostolic Church Pastor. He shall prepare and be in charge of all religious programmes approved by the University authority.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 84,
                                "name": null,
                                "body": "There shall be Assistant Chaplains (CAC Pastors) to assist the University Chaplain to carry out religious activities on campus.",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 85,
                                "name": null,
                                "body": "There shall be devotions at hostel level for effectiveness and maximum participation of all students with the aim of developing leaders among them.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 86,
                                "name": null,
                                "body": "At least three fellowship officers shall be appointed among the students to organize hostel religious activities and monitor participation of members in religious activities.",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 87,
                                "name": null,
                                "body": "Non-participation in approved religious activities shall be regarded as an offence, punishable by warning, suspension and in extreme cases, by expulsion, in line with the regulation.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 88,
                                "name": null,
                                "body": "Although admission into the University shall be open to all irrespective of tribe and religion, for the avoidance of doubt, it shall be compulsory for all students to participate in religious activities organized by the University. No other religious activity shall be allowed on Campus.",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 89,
                                "name": null,
                                "body": "All students must possess and carry to all worship activities, a complete Holy Bible and a copy of CAC Gospel Hymn Book. Students must bring the current edition of CAC Sunday School Pamphlet to the Sunday Service.",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 90,
                                "name": null,
                                "body": "All the approved University Chapel Programmes shall hold during the session.",
                                "number": "8.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 91,
                                "name": null,
                                "body": "Visit to River Ariran: Students are allowed to visit River Ariran from 6.30 am to 7.30 am and 6.15 pm to 6.45 pm. Any student who desires to visit River Ariran outside the stated time must obtain permission from the Dean of Students or the University Chaplain.",
                                "number": "9.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            },
                            {
                                "id": 92,
                                "name": null,
                                "body": "Every student is free to join any of the Chapel Units having passed through the Discipleship Class. Any intending chapel worker must be a baptized Christian and a partaker of the Holy Communion.",
                                "number": "10.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 333
                            }
                        ]
                    }
                ]
            }
        ]
    },
    {
        "id": 9,
        "chapter": "CHAPTER FOUR",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 172,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Academic Life",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 173,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Academic Programmes",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 334,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University runs the course unit system. are This is a qualitative system of organization of the curriculum in which subject areas are broken down into unit courses which examinable and for which students earn credit(s) if passed. The courses are assigned a course code consisting of three alphabets and three figures, e.g. ACC111, CSC121. The courses are arranged in levels of academic progress or progressive order of difficulty. The second aspect of the system is that courses are allocated a number of Credit Units, which a student acquires by having a pass grade in the course. The academic session consists of two regular semesters. The semester consists of 16 weeks.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 173,
                            "name": "Academic Programmes",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 174,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Status of Courses",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 335,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 174,
                            "name": "Status of Courses",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 901,
                                "name": "University Compulsory Course: A course which must be registered for and passed by all students before they can graduate.",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 335
                            },
                            {
                                "id": 902,
                                "name": "Compulsory Course: A course, usually in the student department, which a student must register for and pass before he/she can graduate.",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 335
                            },
                            {
                                "id": 903,
                                "name": "Required course: A course, usually not in the student's Department, which a student must register for and pass before he/she can graduate.",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 335
                            },
                            {
                                "id": 904,
                                "name": "Elective course: A course which a student of his/her volition can register for to make up the minimum required credit unit either for registration or graduation.",
                                "number": "(iv)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 335
                            },
                            {
                                "id": 905,
                                "name": "Pre-requisite course: A course which a student must take and pass before taken another related course.",
                                "number": "(v)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 335
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 175,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Registration of Courses and Class Attendance",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 336,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 175,
                            "name": "Registration of Courses and Class Attendance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 906,
                                "name": "Students shall register for prescribed courses in their degree programmes as advised within the first two weeks of resumption. Students shall register on the University edu portal via the university website www.jabu.edu.ng after payment of appropriate fees.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 336
                            },
                            {
                                "id": 907,
                                "name": "Students shall be surcharged for late registration. Late registration begins at the expiration of two weeks after the resumption date for the semester.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 336
                            },
                            {
                                "id": 908,
                                "name": "Students shall attend all classes in courses they have registered for in the semester. Attendance Register shall be marked at all lectures and practical classes.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 336
                            },
                            {
                                "id": 909,
                                "name": "Students can only write examination in courses they have duly registered for.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 336
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 176,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Students' Performance/Evaluation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 337,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "A student's performance in a course is usually evaluated based on Continuous Assessment and an end of semester examination. The Continuous Assessment is a significant component of the assessment of a student's performance in a course. It usually constitutes 30% of the final score awarded. Each course shall normally be examined at the end of the semester in which it is completed. Student's performance in each course is reported in letter grade based on a five point letter grade system derived from the student's percentage score in the course (see table 4.1).",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 176,
                            "name": "Students' Performance/Evaluation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 338,
                        "title": "Interpretation of Grades",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 176,
                            "name": "Students' Performance/Evaluation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 32,
                                "content": 338,
                                "name": "Scores (%)",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 438,
                                        "name": "70 to 100",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    },
                                    {
                                        "id": 439,
                                        "name": "60 to 69",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    },
                                    {
                                        "id": 440,
                                        "name": "50 to 59",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    },
                                    {
                                        "id": 441,
                                        "name": "45 to 49",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    },
                                    {
                                        "id": 442,
                                        "name": "40 to 44",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    },
                                    {
                                        "id": 443,
                                        "name": "0 to 39",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 32
                                    }
                                ]
                            },
                            {
                                "id": 33,
                                "content": 338,
                                "name": "Letter Grade",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 444,
                                        "name": "A",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    },
                                    {
                                        "id": 445,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    },
                                    {
                                        "id": 446,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    },
                                    {
                                        "id": 447,
                                        "name": "D",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    },
                                    {
                                        "id": 448,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    },
                                    {
                                        "id": 449,
                                        "name": "F",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 33
                                    }
                                ]
                            },
                            {
                                "id": 34,
                                "content": 338,
                                "name": "Grade Point",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 450,
                                        "name": "5",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    },
                                    {
                                        "id": 451,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    },
                                    {
                                        "id": 452,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    },
                                    {
                                        "id": 453,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    },
                                    {
                                        "id": 454,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    },
                                    {
                                        "id": 455,
                                        "name": "0",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 34
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 339,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The performance is weighted by multiplying the number of credits allocated to the course by the grade point obtained by the student. This gives the weighted grade point.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 176,
                            "name": "Students' Performance/Evaluation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 340,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The new grading system has taken effect from 2016/2017 academic session.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 176,
                            "name": "Students' Performance/Evaluation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 341,
                        "title": "Interpretation of Grades effective from 2016/2017 session.",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 176,
                            "name": "Students' Performance/Evaluation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 35,
                                "content": 341,
                                "name": "Scores (%)",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 456,
                                        "name": "70 to 100",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 35
                                    },
                                    {
                                        "id": 457,
                                        "name": "60 to 69",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 35
                                    },
                                    {
                                        "id": 458,
                                        "name": "50 to 59",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 35
                                    },
                                    {
                                        "id": 459,
                                        "name": "45 to 49",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 35
                                    },
                                    {
                                        "id": 460,
                                        "name": "40 to 44",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 35
                                    }
                                ]
                            },
                            {
                                "id": 36,
                                "content": 341,
                                "name": "Letter Grade",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 461,
                                        "name": "A",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 36
                                    },
                                    {
                                        "id": 462,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 36
                                    },
                                    {
                                        "id": 463,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 36
                                    },
                                    {
                                        "id": 464,
                                        "name": "D",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 36
                                    },
                                    {
                                        "id": 465,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 36
                                    }
                                ]
                            },
                            {
                                "id": 37,
                                "content": 341,
                                "name": "Grade Point",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 466,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 37
                                    },
                                    {
                                        "id": 467,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 37
                                    },
                                    {
                                        "id": 468,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 37
                                    },
                                    {
                                        "id": 469,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 37
                                    },
                                    {
                                        "id": 470,
                                        "name": "0",
                                        "is_number": false,
                                        "is_bold": true,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 37
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 177,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Evaluation of Academic Performance",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 342,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Grade Point Average (GPA) and the Cumulative Grade Point Average (CGPA) systems are the yardsticks for evaluating student's performance from semester to semester and from session to session.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 343,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 93,
                                "name": "Grade Point Average (GPA)",
                                "body": "The Grade Point Average (GPA) is the mean (average) of the weighted Grade Points earned by the student in courses taken during the semester of study. At the end of each semester (1st and 2nd), scores for all courses taken by the student are assembled, the corresponding grade point earned is multiplied by the credit unit allocated to the courses (1, 2 or 3). Taking the Table 4.3 below as guide and GNS 111 as example: the score (50; C) corresponds to grade point *3, GNS 111 is a 2 unit course; therefore the grade point earned is 3, (grade point) × 2 (credit unit) = 6. This is done for all the courses taken in the semester and summed to get the Total Credit Point (TCP: 60). The number of units allocated to each course is summed up to get the total number of units (TNU) for which the students had registered; usually between 15 and 24. The Grade Point Average is calculated by dividing the Total credit points (sum of grade points earned) by the total number of units (sum of units allocated to the courses taken in the semester). i.e. 60-7- 24. The GPA is calculated to two decimal places (2.50).",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 343
                            }
                        ]
                    },
                    {
                        "id": 344,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Note:* for the new grade it corresponds to 2 and the grade point earned is 4.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": true,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 345,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 94,
                                "name": "Cumulative Grade Point Average (CGPA)",
                                "body": "The Cumulative Grade Point Average (CGPA) is the up-to-date mean (average) of the Grade Points earned by the student in a programme of study. It captures all courses taken by the student in the semesters that have been completed (current and previous semesters). It is an indication of the student's overall performance at any point in the training programme. The CGPA is the yardstick used to determine the progress/ academic status of a student in the degree programme. It is also used to determine the class of degree a student is awarded at the end of the programme. To calculate the CGPA, the sum of the Grade points earned in all courses that have been taken is divided by the total number of units allocated to all courses registered by the student.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 345
                            }
                        ]
                    },
                    {
                        "id": 346,
                        "title": "Computation of GPA and CGPA",
                        "sub_title": "1st Semester",
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 38,
                                "content": 346,
                                "name": "Course",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 471,
                                        "name": "GNS111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 472,
                                        "name": "GNS112",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 473,
                                        "name": "BIO111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 474,
                                        "name": "BIO112",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 475,
                                        "name": "BI0113",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 476,
                                        "name": "CHM111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 477,
                                        "name": "CHM112",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 478,
                                        "name": "CSC111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 479,
                                        "name": "MAT111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 480,
                                        "name": "PHY111",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    },
                                    {
                                        "id": 481,
                                        "name": "PHY112",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 38
                                    }
                                ]
                            },
                            {
                                "id": 39,
                                "content": 346,
                                "name": "Status",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 482,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 483,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 484,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 485,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 486,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 487,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 488,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 489,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 490,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 491,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    },
                                    {
                                        "id": 492,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 39
                                    }
                                ]
                            },
                            {
                                "id": 40,
                                "content": 346,
                                "name": "CR",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 493,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 494,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 495,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 496,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 497,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 552,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 553,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 554,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 555,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 556,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    },
                                    {
                                        "id": 557,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 40
                                    }
                                ]
                            },
                            {
                                "id": 41,
                                "content": 346,
                                "name": "Score",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 502,
                                        "name": "50",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 503,
                                        "name": "42",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 504,
                                        "name": "62",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 505,
                                        "name": "73",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 506,
                                        "name": "83",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 507,
                                        "name": "40",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 508,
                                        "name": "56",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 509,
                                        "name": "54",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 510,
                                        "name": "41",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 511,
                                        "name": "40",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 512,
                                        "name": "45",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 550,
                                        "name": "40",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    },
                                    {
                                        "id": 551,
                                        "name": "45",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 41
                                    }
                                ]
                            },
                            {
                                "id": 42,
                                "content": 346,
                                "name": "LG",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 513,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 514,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 515,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 516,
                                        "name": "A",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 517,
                                        "name": "A",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 518,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 519,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 520,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 521,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 522,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 523,
                                        "name": "D",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 548,
                                        "name": "E",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    },
                                    {
                                        "id": 549,
                                        "name": "D",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 42
                                    }
                                ]
                            },
                            {
                                "id": 43,
                                "content": 346,
                                "name": "GP",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 524,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 525,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 526,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 527,
                                        "name": "5",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 528,
                                        "name": "5",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 529,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 530,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 531,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 532,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 533,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    },
                                    {
                                        "id": 547,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 43
                                    }
                                ]
                            },
                            {
                                "id": 44,
                                "content": 346,
                                "name": "CP",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 535,
                                        "name": "6",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 536,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 537,
                                        "name": "12",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 538,
                                        "name": "13",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 539,
                                        "name": "5",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 540,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 541,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 542,
                                        "name": "6",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 543,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 544,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    },
                                    {
                                        "id": 546,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 44
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 347,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 910,
                                "name": "TNU = 24",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 347
                            },
                            {
                                "id": 911,
                                "name": "TCP = 80",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 347
                            },
                            {
                                "id": 912,
                                "name": "GPA = 2.50",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 347
                            },
                            {
                                "id": 913,
                                "name": "LG = Letter Grade.",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 347
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 348,
                        "title": "2nd Semester",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 45,
                                "content": 348,
                                "name": "Course",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 572,
                                        "name": "GNS121",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 573,
                                        "name": "GNS122",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 574,
                                        "name": "BIO121",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 575,
                                        "name": "BIO122",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 576,
                                        "name": "BIO123",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 577,
                                        "name": "CHM121",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 578,
                                        "name": "CHM122",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 579,
                                        "name": "CHM123",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 580,
                                        "name": "CSC121",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 581,
                                        "name": "MAT122",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 582,
                                        "name": "PHY121",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    },
                                    {
                                        "id": 583,
                                        "name": "PHY122",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 45
                                    }
                                ]
                            },
                            {
                                "id": 46,
                                "content": 348,
                                "name": "Status",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 560,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 561,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 562,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 563,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 564,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 565,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 566,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 567,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 568,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 569,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 570,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    },
                                    {
                                        "id": 571,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 46
                                    }
                                ]
                            },
                            {
                                "id": 47,
                                "content": 348,
                                "name": "CR",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 584,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 585,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 586,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 587,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 588,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 589,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 590,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 591,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 592,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 593,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 594,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    },
                                    {
                                        "id": 595,
                                        "name": "1",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 47
                                    }
                                ]
                            },
                            {
                                "id": 48,
                                "content": 348,
                                "name": "Score",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 596,
                                        "name": "71",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 597,
                                        "name": "66",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 598,
                                        "name": "62",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 599,
                                        "name": "64",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 600,
                                        "name": "64",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 601,
                                        "name": "50",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 602,
                                        "name": "51",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 603,
                                        "name": "66",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 604,
                                        "name": "45",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 605,
                                        "name": "52",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 606,
                                        "name": "51",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    },
                                    {
                                        "id": 607,
                                        "name": "57",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 48
                                    }
                                ]
                            },
                            {
                                "id": 49,
                                "content": 348,
                                "name": "LG",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 608,
                                        "name": "A",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 609,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 610,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 611,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 612,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 613,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 614,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 615,
                                        "name": "B",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 616,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 617,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 618,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    },
                                    {
                                        "id": 619,
                                        "name": "C",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 49
                                    }
                                ]
                            },
                            {
                                "id": 50,
                                "content": 348,
                                "name": "GP",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 620,
                                        "name": "5",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 621,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 622,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 623,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 624,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 625,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 626,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 627,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 628,
                                        "name": "2",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 629,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 630,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    },
                                    {
                                        "id": 631,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 50
                                    }
                                ]
                            },
                            {
                                "id": 51,
                                "content": 348,
                                "name": "CP",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "table_body": [
                                    {
                                        "id": 632,
                                        "name": "10",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 633,
                                        "name": "8",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 634,
                                        "name": "12",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 635,
                                        "name": "8",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 636,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 637,
                                        "name": "6",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 638,
                                        "name": "6",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 639,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 640,
                                        "name": "4",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 641,
                                        "name": "9",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 642,
                                        "name": "9",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    },
                                    {
                                        "id": 643,
                                        "name": "3",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 51
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 349,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 350,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 914,
                                "name": "TNU = 24",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            },
                            {
                                "id": 915,
                                "name": "TCP = 83",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            },
                            {
                                "id": 916,
                                "name": "GPA = 3.40",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            },
                            {
                                "id": 917,
                                "name": "Grade point",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            },
                            {
                                "id": 918,
                                "name": "CGPA = 2.98",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            },
                            {
                                "id": 919,
                                "name": "CP = Credit Point",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 350
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 351,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Note: Calculation is based on the old grading system.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": true,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 352,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 177,
                            "name": "Evaluation of Academic Performance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 96,
                                "name": "Academic progress",
                                "body": "For a fresh student (100 level or direct entry 200 level students) to continue in his/her course of study, he/she must have a CGPA of at least 1.5 at the end of the session. For returning students (other 300, 400 and 500 level students) a minimum CGPA 1.0 must be maintained at the end of each academic year.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 97,
                                "name": "Academic Status",
                                "body": "A student shall have any of the following academic status at the end of a session:",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 98,
                                "name": null,
                                "body": "Pass:",
                                "number": null,
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 99,
                                "name": null,
                                "body": "Academic status of a student whose CGPA is equal to or greater than 1.0 and did not fail any course. The new grading system must equal or greater than 1.5.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 100,
                                "name": null,
                                "body": "Good Standing:",
                                "number": null,
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 101,
                                "name": null,
                                "body": "Academic status of a student whose CGPA is equal to or greater than 1.0 but who has failed one or more courses.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 102,
                                "name": null,
                                "body": "Probation:",
                                "number": null,
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 103,
                                "name": null,
                                "body": "Academic status of a student whose CGPA is less than 1.0 or 1.5 in the new grading system.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 104,
                                "name": null,
                                "body": "Withdrawal:",
                                "number": null,
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            },
                            {
                                "id": 105,
                                "name": null,
                                "body": "Academic status of a student whose CGPA is less than 1.0 for two consecutive session or 1.5 for the new grading system.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 352
                            }
                        ]
                    }
                ]
            },
            {
                "id": 178,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Requirements for Graduation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 353,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University places great premium on the production of highly qualified graduates as much as it places on the development of godly citizens. Students are therefore expected to be very familiar with the University's requirements for graduation from the day of registration.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 354,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 920,
                                "name": "(a) To graduate, a student shall normally pass a minimum of 120 credit units for a 4-year degree programme. 150 credit units for a 5-year degree programme. These must be spread strictly at a minimum of 30 passed credit units at each level of study. Students entering as 200 level can graduate with 30 credit units less than what is specified above for their respective programme.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 921,
                                "name": "All recommended General Studies (GNS) courses must be taken and passed for graduation. However, scores in the best 10 units will be used for computation of overall Cumulative Grade Point Average at graduation. This will include all 6 units of Entrepreneurship related GNS courses.",
                                "number": "(b)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 922,
                                "name": "At the end of each semester when the grades for all courses have been assembled, each student's grade point average is calculated.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 923,
                                "name": "A student is required to obtain a minimum grade of E for each examination he takes. A student shall repeat a course in which he/she fails to obtain a minimum passing grade and will be credited with whatever grade he/she obtains therein. Every grade obtained will be used in the computation of Cumulative Grade Point Average (CGPA) until the final year, when Regulation 4.6.1b shall apply with regards to GNS and Entrepreneurship courses.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 924,
                                "name": "Computation of grades would start from 100 or 200 level, depending on the point of admission into the University, so that the Cumulative Grade Point Average at graduation is for the entire course.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 925,
                                "name": "Students in practical oriented discipline are expected to participate in skills training programme under Student Industrial Work Experience Scheme (SIWES) as a requirement for graduation.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 926,
                                "name": "A Bachelor's degree programme will normally be completed in 8 semesters for a 4-year programme; 10 semesters for a 5-year programme, and 12 semesters for a 6-year programme (two semesters less for those who join at 200 level). The date of degree shall correspond with the end of the semester in which the student completed his course requirements.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 927,
                                "name": "Atransfer student with advance standing will be required to spend not less than two academic sessions in the University to be eligible for a degree of Joseph Ayo Babalola University. The appropriate Department, College and the Senate will consider all transfer cases.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 928,
                                "name": "To qualify for an honour's degree, a student shall complete his/her studies in not more than one and a half times the normal duration of his/her programme.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 929,
                                "name": "A student shall first register for his carryover/unregistered lower level courses before he/she can within the limit of 24 credit units, be allowed to register for other courses.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 930,
                                "name": "A student who absents himself/herself for two consecutive semesters without a valid reason may be asked to withdraw from the University, irrespective of his/her cumulative grade point average.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 931,
                                "name": "A student for good reason and with the approval of Senate can suspend his/her programme of study for a maximum of one calendar year.",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 932,
                                "name": "A student who transfers from one programme to another or from another University may be credited with those course credit units earned which are relevant to the curriculum of the new programme.",
                                "number": "12.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            },
                            {
                                "id": 933,
                                "name": "The degree to be awarded shall be classified based on the final Cumulative Grade Point Average (CGPA) of student at the end of his/her degree programme.",
                                "number": "13.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 354
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 355,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The degree is classified as follows:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 934,
                                "name": "First Class 4.50-5.00",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 355
                            },
                            {
                                "id": 935,
                                "name": "2nd Class Upper 3.50-4.49",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 355
                            },
                            {
                                "id": 936,
                                "name": "2nd Class Lower 2.40-3.49",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 355
                            },
                            {
                                "id": 937,
                                "name": "Third Class 1.50-2.39",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 355
                            },
                            {
                                "id": 938,
                                "name": "Pass 1.00-1.49",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 355
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 356,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "A new degree classification will be adopted for students that are admitted from 2016/2017 session and thereafter as follows:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 357,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 939,
                                "name": "First Class 3.50-4.00",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 357
                            },
                            {
                                "id": 940,
                                "name": "2nd Class Upper 3.00-3.49",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 357
                            },
                            {
                                "id": 941,
                                "name": "2nd Class Lower 2.00-2.99",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 357
                            },
                            {
                                "id": 942,
                                "name": "Third Class 1.00-1.99",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 357
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 358,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "However, Professional degrees may not necessarily be classified.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 359,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 178,
                            "name": "Requirements for Graduation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 943,
                                "name": "A student, who fails to sit for an examination in a course he/she duly registered without good cause, shall be deemed to have failed the course.",
                                "number": "14.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 359
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 179,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Student Industrial Work Experience Scheme (SIWES)",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 360,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Student Industrial Work Experience Scheme (SIWES) For students in practice-oriented disciplines, satisfactory completion of a six month periods of approved industrial work experience is required for a degree. The practical experience/ training should be carried out in a professional office, a firm or industry, having relevant and capable technology facilities.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 179,
                            "name": "Student Industrial Work Experience Scheme (SIWES)",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 361,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The purpose of the programme is to relate theory to practice and understand its application in the reality of a demanding profession. It is essential that the student obtains a wide range of experience both in office, site work, and within the factory as applicable. To ensure this, the student must keep a record of work in the office, site or factory for assessment by the University staff. At the end of the period, the work done by the student, submitted in form of a report, would be examined jointly by the supervisor on site/industry and an academic staff.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 179,
                            "name": "Student Industrial Work Experience Scheme (SIWES)",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 180,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Eligibility for Examination",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 362,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 180,
                            "name": "Eligibility for Examination",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 944,
                                "name": "A student must have duly registered for the courses in which he/she intends to write examination.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 362
                            },
                            {
                                "id": 945,
                                "name": "A student must have 70% class attendance for the course he/she intends to write examination.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 362
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 181,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Academic Misconduct/Examination Malpractice",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 363,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Examination malpractices or academic misconduct shall attract appropriate sanction. Academic misconduct includes the following:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 181,
                            "name": "Academic Misconduct/Examination Malpractice",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [
                            {
                                "id": 946,
                                "name": "Cheating in examinations, tests, assignments, term paper etc. Cheating includes copying from another student's work or allowing another student to copy from one's work; consultation with any unauthorized person during examination or test.",
                                "number": "i.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 947,
                                "name": "Impersonating another student or being impersonated",
                                "number": "ii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 948,
                                "name": "Plagiarism i.e. use of other people's ideas, writings, words etc. without acknowledgement, in examinations, tests, assignments, term paper or projects.",
                                "number": "iii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 949,
                                "name": "Buying or stealing or illegally obtaining examination questions.#",
                                "number": "iv.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 950,
                                "name": "Falsifying examination records or result to gain admission into the University.",
                                "number": "v.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 951,
                                "name": "Faking sickness or submitting false medical certificate to avoid examination.",
                                "number": "vi.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 952,
                                "name": "Causing commotion at examination centres, harassing or intimidating students and staff at examination venues.",
                                "number": "vii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 953,
                                "name": "Breaking into Lecturer's office to steal examination question.",
                                "number": "viii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 954,
                                "name": "Threatening or rudeness to staff during examination.",
                                "number": "ix.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            },
                            {
                                "id": 955,
                                "name": "Bullying of student during examination.",
                                "number": "x.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 363
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 182,
                "category": {
                    "id": 9,
                    "chapter": "CHAPTER FOUR",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Library",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 364,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University shall operate a well stocked Library. The stock includes large and a variety of volumes and local and international journals. This is to encourage students to do independent reading and research in addition to lectures and lecture notes. The Library is also provided with internet facility which staff and students can take advantage of, in accessing foreign journals and other educational materials.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 182,
                            "name": "University Library",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 365,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 182,
                            "name": "University Library",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 106,
                                "name": "Opening Hours",
                                "body": "Monday to Friday: 8.00 a.m. to 9.00 p.m.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 365
                            },
                            {
                                "id": 107,
                                "name": null,
                                "body": "Saturday: 9.00 a.m. to 5.00 p.m.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 365
                            },
                            {
                                "id": 108,
                                "name": null,
                                "body": "The Library is closed on Sundays and during University approved religious activities and Public holidays.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 365
                            }
                        ]
                    },
                    {
                        "id": 366,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 182,
                            "name": "University Library",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 109,
                                "name": "General Library Regulations",
                                "body": "Because JABU is a fully residential University, a single identity card is provided for students to enjoy services provided on Campus including the Library services.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 110,
                                "name": null,
                                "body": "Students are expected to register in the University Library and obtain Library cards.",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 111,
                                "name": null,
                                "body": "Consequently, students must provide a valid and current identity card to enter the Library.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 112,
                                "name": null,
                                "body": "Valid and current identity card must be produced on demand to borrow books from the Library.",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 113,
                                "name": null,
                                "body": "Knocking shoes (with noise making soles) must not be worn into the Library.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 114,
                                "name": null,
                                "body": "Mobile phones must be switched off while in the Library. Any phone, not switched off, but rings in the Library, will be confiscated.",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 115,
                                "name": null,
                                "body": "Eating and drinking inside the Library is prohibited.",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 116,
                                "name": null,
                                "body": "Bags, umbrellas etc. must be deposited with the security staff on entering the Library. Retrieval cards/plastics, which will be given at the deposit point, must be returned as evidence of ownership before collection.",
                                "number": "8.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 117,
                                "name": null,
                                "body": "Walkman, radio, MP3 and other music centres are not allowed in the Library and will be confiscated if found.",
                                "number": "9.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 118,
                                "name": null,
                                "body": "Use of personal books to secure seats in the Library is prohibited and such books shall be confiscated if found.",
                                "number": "10.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 119,
                                "name": null,
                                "body": "Library users are expected to maintain silence while in the Library. Security and other Library staff have been authorized to send out noise makers.",
                                "number": "11.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 120,
                                "name": null,
                                "body": "Students must submit themselves for checking before leaving the Library.",
                                "number": "12.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            },
                            {
                                "id": 121,
                                "name": null,
                                "body": "Other detailed and specific Library regulations regarding use, lending, circulating of Library books and other materials, will be supplied during registration and orientation.",
                                "number": "13.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 366
                            }
                        ]
                    },
                    {
                        "id": 367,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 182,
                            "name": "University Library",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 9
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 122,
                                "name": "Regulations for E-Library",
                                "body": "Noise making is prohibited.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 367
                            },
                            {
                                "id": 123,
                                "name": null,
                                "body": "The use of personal laptop by any Library users is not allowed",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 367
                            },
                            {
                                "id": 124,
                                "name": null,
                                "body": "The E-Library facility is strictly for academic purpose. Social media such as tweeter, facebook, downloading of films or movies are prohibited.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 367
                            },
                            {
                                "id": 125,
                                "name": null,
                                "body": "The Library provides an integrated system (Koha Software) which allows Library users to check for books that are available in the Library via computer and this can be accessed within the institution through the local address http://local.library.jabu",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 367
                            },
                            {
                                "id": 126,
                                "name": null,
                                "body": "It is mandatory for all the final year students to bind their projects in the University Library.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 367
                            }
                        ]
                    }
                ]
            }
        ]
    },
    {
        "id": 10,
        "chapter": "CHAPTER FIVE",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 183,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Social Life",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 184,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Introductory Remarks",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 368,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Man is essentially a social being; isolation is therefore regarded as one of the greatest deprivations for man. Joseph Ayo Babalola University is a co-educational institution; it believes in co- existence of both sexes and therefore encourages wholesome social activities within and between both sexes. Opportunities for healthy inter sex associations and activities to build a circle of friends exist in the classrooms, laboratories, sport fields, cafeteria and places of worship.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 184,
                            "name": "Introductory Remarks",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 185,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Relationship between Opposite Sex",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 369,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 185,
                            "name": "Relationship between Opposite Sex",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [
                            {
                                "id": 956,
                                "name": "Meeting of male and female students is necessarily allowed in classrooms, cafeteria, sport fields, Library and generally in the open and in the daylight.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 957,
                                "name": "Meeting of students of opposite sexes in the dark and isolated places after 7.00 pm is not allowed as it opens such students to temptations.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 958,
                                "name": "Visit by a male student to a female student or vice versa in the hall of residence must take place in the visitors' reception areas and must not be beyond 7.00 pm.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 959,
                                "name": "Intention to marry by a student either to a fellow student or a non-student must be notified to the University authority, through the Dean of Students, at least three months before the date of marriage.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 960,
                                "name": "No recognition would be given to any student who married without informing the University authority.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 961,
                                "name": "Married students are not permitted to live together with the University campus.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 962,
                                "name": "A female student (married or unmarried) is not expected to carry a pregnancy during her period of studies.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 963,
                                "name": "If pregnancy occurs, the female student will be expected to vacate the hall of residence immediately and will remain suspended for twelve months.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 964,
                                "name": "The affected student will regain her student status in JABU only on payment of N100,000.00 only.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 965,
                                "name": "Where a male student is involved in the pregnancy of a female student, he will be suspended for a period of twelve months.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 966,
                                "name": "The studentship of the student will be restored at the end of the twelve months, only on payment of N100,000.00 only.",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 967,
                                "name": "No male student is allowed to sneak and stay in the female hostel verse versa.",
                                "number": "12.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 968,
                                "name": "No regular student is allowed to stay outside the University campus.",
                                "number": "13.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            },
                            {
                                "id": 969,
                                "name": "Co-habitation of male and female students are not allowed.",
                                "number": "14.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 369
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 186,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Organization of Private Parties",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 370,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 186,
                            "name": "Organization of Private Parties",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [
                            {
                                "id": 970,
                                "name": "Parties to mark students' birthdays, class and group parties, are legitimate but must be preceded by a written request to the Dean of Students at least a week before, indicating date, time, estimated number of persons expected, place and duration. The affected students must receive a written permission programme of activities before the occasion.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 971,
                                "name": "Loud music, (whether secular or religious) and the use of alcoholic drinks, are prohibited.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 972,
                                "name": "Moderation must be the watchword at parties, extravagance in drinks, food and dress must be avoided.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 973,
                                "name": "Generally, activities which could arouse lust, passion and indecent contact among opposite sexes are prohibited.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 974,
                                "name": "Private parties must end by 6.00 p.m. and in any case should not be allowed to interfere with academic and congregational/hall religious activities.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 975,
                                "name": "Students are not permitted to go either in groups or alone to attend parties in town, hotels or private houses outside the University Campus during school session.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 976,
                                "name": "Party of any nature is not allowed in the academic area.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            },
                            {
                                "id": 977,
                                "name": "Parties should be restricted to the Cafeteria and the Common Rooms or any other place approved by the Dean of Students' Affairs.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 370
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 187,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Organized Social Activities",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 371,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is located in a rural setting with little social life. In order to enrich the social life on Campus, the University, through the Student Affairs Office, organizes social activities including film shows, concerts, drama, Cultural shows of edifying nature during weekends. The Student Union, after due clearance from the Student Affairs Office, may also organize social programmes.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 187,
                            "name": "University Organized Social Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 372,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "In addition to University wide social activities, each hall or department through its officials may organize its own social activities including hall dinners with the permission of the Dean of Student Affairs. All social activities must not extend beyond 7.00 pm.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 187,
                            "name": "University Organized Social Activities",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 188,
                "category": {
                    "id": 10,
                    "chapter": "CHAPTER FIVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Academic Association Week",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 373,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 188,
                            "name": "Academic Association Week",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 10
                        },
                        "list_contents": [
                            {
                                "id": 978,
                                "name": "Academic association or departmental week activities must not exceed three days.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 373
                            },
                            {
                                "id": 979,
                                "name": "Activities of the week must have academic relevance to the students' academic programme.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 373
                            },
                            {
                                "id": 980,
                                "name": "Visit during Academic Association week must be to places that have academic relevance to the students. Such academic visit must be with the consent of the Head of Department.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 373
                            },
                            {
                                "id": 981,
                                "name": "Programme of activities for association week must be cleared with the Dean of Students' Affairs.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 373
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 11,
        "chapter": "CHAPTER SIX",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 189,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Code of Conduct for Students",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 190,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Identification",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 374,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "For proper identification, it is mandatory for students to wear their identity cards while on Campus.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 190,
                            "name": "Identification",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 191,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Exeat",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 375,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "All students must obtain exeat before leaving the campus. The exeat must be fully signed and stamped by the Dean of Student Affairs. The list of all students on exeat should be sent from the Student Affairs Office weekly to the Security Post for cross- checking and the list be returned to the Student Affairs between Monday and Wednesday stating clearly students who have defaulted in returning to the campus.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 191,
                            "name": "Exeat",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 192,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Hostel Life",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 376,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Individual freedom ends where the freedom of others begins. While a student is allowed to enjoy his freedom within the hostel/room, there is absolute need to avoid infringement on the freedom of others, especially since Joseph Ayo Babalola University operates multiple occupancy of rooms.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 192,
                            "name": "Hostel Life",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 377,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The following regulations shall be observed:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 192,
                            "name": "Hostel Life",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [
                            {
                                "id": 982,
                                "name": "Each student shall be allocated to a room in which he/she is entitled to a bed space. The room shall be shared with other students of the same sex.",
                                "number": "i.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 983,
                                "name": "A student shall not change or swap room allocated to him/her.",
                                "number": "ii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 984,
                                "name": "A student shall not illegally occupy a room not allocated to him/her.",
                                "number": "iii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 985,
                                "name": "Everyone must cooperate with others to maintain clean room and clean environment. Towards this end, students are required to sweep their rooms.",
                                "number": "iv.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 986,
                                "name": "Washing of clothes must be at designated spots only, not in the room or corridor.",
                                "number": "v.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 987,
                                "name": "Washed clothes must be dried on drying lines provided for the purpose.",
                                "number": "vi.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 988,
                                "name": "Toilets must be kept clean after use.",
                                "number": "vii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 989,
                                "name": "Writing on the walls and wardrobes is prohibited.",
                                "number": "viii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 990,
                                "name": "Noise level, either from television sets, radio sets, etc, must be kept at low level; preferably ear phones should be used.",
                                "number": "ix.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 991,
                                "name": "Indecent music or obscene programmes on television are prohibited.",
                                "number": "x.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 992,
                                "name": "Generally, external visitors must not be received in the rooms to avoid inconveniencing other roommates.",
                                "number": "xi.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 993,
                                "name": "Visitors, students alike, of the opposite sex, must be received in the common room or designated place. Visitors must appropriately sign in and out of the hall a the Porter's Lodge.",
                                "number": "xii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 994,
                                "name": "Cooking is not allowed in the hostel (room).",
                                "number": "xiii.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 995,
                                "name": "Electrical appliances for cooking and for heating e.g. plates; boiling rings are not permitted in the Halls of residence.",
                                "number": "xiv.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 996,
                                "name": "Students are expected to equip themselves with the following:a. plastic buckets b. bed spread c. blanket d. pillow cases e. pressing iron f. towel g. flash light h. soap and toiletries i. table lamp/rechargeable lamp.",
                                "number": "xv.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 997,
                                "name": "The following items are prohibited for safety reasons: (i) Dangerous weapons e.g. machetes, guns, bottles, etc. (ii) Inflammables and open flames such as candle, stoves, gas lighters etc.",
                                "number": "xvi.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            },
                            {
                                "id": 998,
                                "name": "All students must submit themselves for periodic room and personal check by the Porters and other University hostel officials.",
                                "number": "xx.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 377
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 193,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Policy on Reading",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 378,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 193,
                            "name": "Policy on Reading",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [
                            {
                                "id": 999,
                                "name": "All students shall be involved in reading between 7.00 p.m. and 9:30 p.m, which shall be observed as official reading hours. Therefore no student shall be found loitering around during these hours.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 378
                            },
                            {
                                "id": 1000,
                                "name": "Students may use the Library, classrooms and halls of residence for their evening study. Note that female students are not allowed to study in the academic buildings beyond 7.00 p.m.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 378
                            },
                            {
                                "id": 1001,
                                "name": "All students must return to their rooms at 9.30 p.m. Spot checks shall be carried out by hall officials to ensure compliance.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 378
                            },
                            {
                                "id": 1002,
                                "name": "All lights must be put off at 11.00 p.m. However table lamps may be used beyond 11.00 p.m. without inconveniencing others.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 378
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 194,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Inter-Personal Relationship",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 379,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 194,
                            "name": "Inter-Personal Relationship",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [
                            {
                                "id": 1003,
                                "name": "A student shall not be rude to University Staff member(s).",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1004,
                                "name": "A student shall not receive or keep guest(s) and visitor(s) in rooms.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1005,
                                "name": "A student shall not organize private party in the room in the hall of residence.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1006,
                                "name": "A student shall not engage in betting and gambling activities.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1007,
                                "name": "A student shall not engage in theft and attempted theft.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1008,
                                "name": "A student shall not engage in any form of fighting.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1009,
                                "name": "A student shall not engage in smoking (hemp or cigarettes) and drug abuse through any other means.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1010,
                                "name": "A student shall not drink alcoholic beverages or be in possession of it.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1011,
                                "name": "A student shall not engage in sexual assault and abuse.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1012,
                                "name": "A student shall not constitute a threat to the lives of other students.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1013,
                                "name": "A student shall not participate in any illegal or secret meeting organized by secret societies and fraternities.",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1014,
                                "name": "A student shall not make a noise in the Hall of Residence.",
                                "number": "12.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1015,
                                "name": "A student shall not molest, bully, intimidate or harass any University staff or fellow student(s).",
                                "number": "13.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            },
                            {
                                "id": 1016,
                                "name": "A student shall not engage in any act that constitutes an offence under the laws of the University.",
                                "number": "14.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 379
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 195,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Property",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 380,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 195,
                            "name": "University Property",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [
                            {
                                "id": 1017,
                                "name": "A student shall not use high voltage appliances, tamper with or alter electrical installations in the room.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1018,
                                "name": "A student shall not, by any action or inaction, damage of destroy any University property.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1019,
                                "name": "A student shall not take away door keys during vacations/closures.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1020,
                                "name": "Astudent shall not convert illegally, University property to personal use.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1021,
                                "name": "A student shall not move any University property from one Hall to another or from one classroom to another without permission from the Dean, Student Affairs or Dean of College as appropriate.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1022,
                                "name": "A student shall not illegally occupy the Vice Chancellor's Lodge or the residence of other University staff.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1023,
                                "name": "Students' demonstrations resulting in the vandalization and/or theft of University property, and those of staff, are prohibited.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            },
                            {
                                "id": 1024,
                                "name": "Unauthorized seizures of University property are prohibited.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 380
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 196,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Environmental Issues",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 381,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 196,
                            "name": "Environmental Issues",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [
                            {
                                "id": 1025,
                                "name": "A student shall not walk on or across the lawns.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1026,
                                "name": "Indecent use of the bathrooms, toilets and other external facilities shall not be allowed.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1027,
                                "name": "A student shall not wash or spread clothes, plates or other personal items on the verandah.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1028,
                                "name": "A student shall not disturb ornamental plants.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1029,
                                "name": "A student must not ride a motor-cycle or drive motor car or any motorized vehicle within the Hall of Residence or the University Campus.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1030,
                                "name": "A student shall not cook in the rooms or anywhere within the hall of residence.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1031,
                                "name": "Indiscriminate littering of the environment shall not be allowed.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1032,
                                "name": "A student shall not discharge human waste in an unauthorized place.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1033,
                                "name": "A student shall not pour water or throw other objects from the top floors.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1034,
                                "name": "A student shall not create unauthorized entrances in the Halls of Residence.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            },
                            {
                                "id": 1035,
                                "name": "It is mandatory to participate in the environmental sanitation exercise that holds once in a month.",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 381
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 197,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Dress Code",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 382,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 197,
                            "name": "Dress Code",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 127,
                                "name": "Introductory Statement",
                                "body": "As Christians, whatever we do must be to the glory of God our Creator. This is more particularly so in the way we dress. In many decided rape cases, judges have ruled that, the victims were accomplices, having induced their assailants by their mode of dressing and general appearances. The Yoruba also agree that the way one dresses generally, reflects on the way others perceive one-either with respect or disdain.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 128,
                                "name": null,
                                "body": "A person who dresses like a hooligan is seen and treated as such; while a lady who dresses like a prostitute is seen and treated as such. When a woman dresses with half the breast bare and uncovered; when the stomach down to the abdomen is uncovered or when a skirt is so short that it leaves little or nothing to the imagination; or when seated, exposes her underwear; all these amount to invitation to the opposite counterpart to buy sex for money or other favours such as marks. A person is addressed the way he dresses.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 129,
                                "name": null,
                                "body": "Joseph Ayo Babalola University as a Christian University, determined to uphold purity and good conduct, has put in place a dress code that all students must comply with. Students are expected to dress formally between 8.00 a.m. and 4.00 p.m. on Campus.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 130,
                                "name": "General",
                                "body": "Every student shall desire decency in dressing and appearance that presents the image of a cultured educated person.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 131,
                                "name": null,
                                "body": "Moderation in dressing is a sign of good Christian upbringing. Extravagance in dressing is outward evidence of vanity. It is capable of leading youth astray especially when parents are unable to afford them. The insatiable love of extravagant and flamboyant attire, which cannot be supported, would lead male students to stealing and gansterism, while female students are lured into prostitution and even stealing!",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 132,
                                "name": null,
                                "body": "The Bible enjoins Christians to avoid ostentatious and extravagant dressing. JABU students should therefore focus more on internal and external adornment of purity and love beyond outward extravagant adornment.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 133,
                                "name": null,
                                "body": "Dressing to the place of worship, for both male and female students, must be formal, whether they are native or European attire.",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 134,
                                "name": null,
                                "body": "Body tattoos are prohibited.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 135,
                                "name": null,
                                "body": "Students shall not use group uniforms suggestive of illegal association, gangsterism, and the like.",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 136,
                                "name": "Female",
                                "body": "Skirts must be long enough to cover the knees while sitting or standing. If splited, the slit must not go above the knees.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 137,
                                "name": null,
                                "body": "Blouses must cover the breasts down to the abdomen. Blouses must have enough sleeves to cover the upper arm.",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 138,
                                "name": null,
                                "body": "Blouses with obscene inscriptions are not allowed.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 139,
                                "name": null,
                                "body": "Transparent dresses that reveal the underwear are not permitted outside halls of residence.",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 140,
                                "name": null,
                                "body": "Tight fitting dresses and pencil skirts are prohibited.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 141,
                                "name": null,
                                "body": "Female students are not allowed to wear knicker burgers and trousers outside their hall(s) of residence. Female students shall wear proper sports wears during sporting activities.",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 142,
                                "name": null,
                                "body": "Christ Apostolic Church does not encourage the use of trinkets. Therefore, bogus and dropping earrings are prohibited.",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 143,
                                "name": null,
                                "body": "Use of multiple earrings is prohibited.",
                                "number": "8.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 144,
                                "name": null,
                                "body": "Pyjamas, nightgowns and bathroom slippers are not allowed outside the halls of residence.",
                                "number": "9.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 145,
                                "name": null,
                                "body": "Native attires that conform with above standards are permitted.",
                                "number": "10.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 146,
                                "name": null,
                                "body": "Make-ups of varying shades and colours are not permitted.",
                                "number": "11.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 147,
                                "name": null,
                                "body": "Abnormal, crazy braids, dread-locks, coloured and bushy hairdos are not allowed.",
                                "number": "12.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 148,
                                "name": null,
                                "body": "Long (artificial or natural) nails and fixing of nails are not allowed.",
                                "number": "13.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 149,
                                "name": null,
                                "body": "Long hairdo should be properly packed.",
                                "number": "14.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 150,
                                "name": null,
                                "body": "Female students in the College of Agricultural Sciences, who may wish to wear trousers during their practical, must wear their green overall and not jeans or other wears.",
                                "number": "15.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 151,
                                "name": null,
                                "body": "Female are expected to cover their hairs during chapel activities.",
                                "number": "16.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 152,
                                "name": null,
                                "body": "Fixing of artificial eyelashes is prohibited.",
                                "number": "17.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 153,
                                "name": "Male",
                                "body": "Male students are required to dress preferably in conventional suit, French suit or minimally in trousers and tucked-in shirt with tie.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 154,
                                "name": null,
                                "body": "Boxers, knickers, Armless T-shirts and all forms of Sandals or Slippers are not allowed outside the hostel during official hours (8.00am to 5.00pm)",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 155,
                                "name": null,
                                "body": "Shirts/T-Shirts must be tucked in and buttoned up to give respectability. Moving around Campus with bare chest and belly is prohibited.",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 156,
                                "name": null,
                                "body": "Hair must be properly cut and uniform; if long enough must be combed and not be left shabby",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 157,
                                "name": null,
                                "body": "Growing of beard is not allowed.",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 158,
                                "name": null,
                                "body": "Bathroom slippers must not be worn outside the halls of residence.",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 159,
                                "name": null,
                                "body": "Jeans that are faded, threadbare or torn must not be worn.",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 160,
                                "name": null,
                                "body": "Use of any form of female ornaments like ear rings, necklace, bangles, and bracelets are prohibited.",
                                "number": "8.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 161,
                                "name": null,
                                "body": "Native attires that conform to the above standards are allowed.",
                                "number": "9.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 162,
                                "name": null,
                                "body": "xTrousers should be properly worn. It should not be placed on the buttocks. Sagging is prohibited.",
                                "number": "10.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 163,
                                "name": null,
                                "body": "The wearing of rosary is prohibited.",
                                "number": "11.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 164,
                                "name": "NOTE",
                                "body": "Porters and security personnel are empowered to prevent a student, who is improperly dressed from going out of the hall of residence.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 165,
                                "name": null,
                                "body": "Teaching and non-teaching staff of the University are empowered to prevent students who fail to meet the above dress code from attending lectures or participating in other activities.",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 166,
                                "name": "Miscellaneous",
                                "body": "A student shall not climb wall fence.",
                                "number": "(i)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 167,
                                "name": null,
                                "body": "A student who has been advised to withdraw from the University for any reason shall neither attend lectures nor live in any Hall of Residence.",
                                "number": "(ii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 168,
                                "name": null,
                                "body": "A student shall not invite and/or accommodate any outsider without clearance from the Vice Chancellor, the Registrar or the Dean of Student Affairs.",
                                "number": "(iii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 169,
                                "name": null,
                                "body": "Possession of obscene/ pornographic materials in print or electronic form is prohibited.",
                                "number": "(iv)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 170,
                                "name": null,
                                "body": "Pasting of pornographic pictures in any area of Campus is prohibited.",
                                "number": "(v)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 171,
                                "name": null,
                                "body": "Posters and handbills must be pasted only on designated bill boards and not indiscriminately on walls and trees.",
                                "number": "(vi)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 172,
                                "name": null,
                                "body": "All laptop must have the name of the owner inscribed conspicuously on them.",
                                "number": "(vii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            },
                            {
                                "id": 173,
                                "name": null,
                                "body": "Students shall not possess charms or any fetish object.",
                                "number": "(viii)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 382
                            }
                        ]
                    }
                ]
            },
            {
                "id": 198,
                "category": {
                    "id": 11,
                    "chapter": "CHAPTER SIX",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Offences and Recommended Sanctions",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 383,
                        "title": "CHAPEL",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 52,
                                "content": 383,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 644,
                                        "name": "1.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 645,
                                        "name": "2.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 646,
                                        "name": "3.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 647,
                                        "name": "4.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 648,
                                        "name": "5.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 649,
                                        "name": "6.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 650,
                                        "name": "7.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 651,
                                        "name": "8.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 652,
                                        "name": "9.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 653,
                                        "name": "10.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 654,
                                        "name": "11.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 655,
                                        "name": "12.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 656,
                                        "name": "13.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 657,
                                        "name": "14.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    },
                                    {
                                        "id": 658,
                                        "name": "15.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 52
                                    }
                                ]
                            },
                            {
                                "id": 53,
                                "content": 383,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 659,
                                        "name": "Failure to attend morning  devotion.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 660,
                                        "name": "Coming late to Chapel activities.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 661,
                                        "name": "Returning to the hostel after marking attendance.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 662,
                                        "name": "Absence from Sunday School/Sunday Service once in a month.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 663,
                                        "name": "Absence from Bible Study  once in a month.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 664,
                                        "name": "Absence from University Community Worship in a month.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 665,
                                        "name": "Coming to Chapel without Bible, Hymn book and Sunday School Pamphlet.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 666,
                                        "name": "Noise making during Chapel activities.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 667,
                                        "name": "Being found outside during Chapel activities.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 668,
                                        "name": "Rudeness to staff during  chapel",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 669,
                                        "name": "Using ear phones or receiving calls/browsing during Chapel activities.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 670,
                                        "name": "Insulting Chapel workers.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 671,
                                        "name": "Causing commotion or disturbance during Chapel activities",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 672,
                                        "name": "Wearing indecent dress to Chapel Programme",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    },
                                    {
                                        "id": 673,
                                        "name": "Failure to cover hair by a female student during worship",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 53
                                    }
                                ]
                            },
                            {
                                "id": 54,
                                "content": 383,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 674,
                                        "name": "Two weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 675,
                                        "name": "Forfeiture of attendance",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 676,
                                        "name": "Two weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 677,
                                        "name": "Once (One week of community work; More than once (2 weeks of community work)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 678,
                                        "name": "Once (One week of community service; More than once (2 weeks of community work)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 679,
                                        "name": "Once (One week of community work; More than once (2 weeks of community work)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 680,
                                        "name": "Purchase of the items; More than 5 times (one week of community work)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 681,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 682,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 683,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 684,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 685,
                                        "name": "1 week of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 686,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 687,
                                        "name": "3 weeks suspension and 1 week community work upon resumption",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    },
                                    {
                                        "id": 688,
                                        "name": "Warning/call out at chapel.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 54
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 384,
                        "title": "ACADEMIC",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 55,
                                "content": 384,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 689,
                                        "name": "16.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 690,
                                        "name": "17.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 691,
                                        "name": "18.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 692,
                                        "name": "19.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 693,
                                        "name": "20.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 694,
                                        "name": "21.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 695,
                                        "name": "22.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 696,
                                        "name": "23.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 697,
                                        "name": "24.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 698,
                                        "name": "25.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 699,
                                        "name": "26.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 700,
                                        "name": "27.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 701,
                                        "name": "28.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 702,
                                        "name": "29.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 703,
                                        "name": "30.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 704,
                                        "name": "31.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 705,
                                        "name": "32.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    },
                                    {
                                        "id": 706,
                                        "name": "33.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 55
                                    }
                                ]
                            },
                            {
                                "id": 56,
                                "content": 384,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 707,
                                        "name": "Lateness to class.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 708,
                                        "name": "Failure to make 70% class attendance",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 709,
                                        "name": "Impersonation.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 710,
                                        "name": "Coming to examination hall with blank answer scripts.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 711,
                                        "name": "Gaining admission with falsified records/concealment of past record",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 712,
                                        "name": "Smuggling question papers out of examination hall for help and returning with answer scripts.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 713,
                                        "name": "Physical attack or assault on invigilator(s).",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 714,
                                        "name": "Being found in examination hall with prepared answer scripts, or jotted notes (cribs or chips), under the locker or in the vicinity.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 715,
                                        "name": "Consultation or soliciting information or assistance e.g. copying, exchange of sheets or question papers in the examination hall.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 716,
                                        "name": "Destruction of evidence (perversion of justice).",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 717,
                                        "name": "Failure to appear before malpractice panel.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 718,
                                        "name": "Writing relevant materials on palms and other places.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 719,
                                        "name": "Coming to the examination hall with prepared answer scripts or live examination question.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 720,
                                        "name": "Bringing a mobile phone into the examination hall.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 721,
                                        "name": "Bringing a mobile phone into the examination hall and cheating with it.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 722,
                                        "name": "Refusal to complete examination misconduct form.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 723,
                                        "name": "Making away with answer scripts after examination.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    },
                                    {
                                        "id": 724,
                                        "name": "Leaving seat or examination hall without permission.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 56
                                    }
                                ]
                            },
                            {
                                "id": 57,
                                "content": 384,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 725,
                                        "name": "Forfeiture of class attendance",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 726,
                                        "name": "Not qualified to write examination in the course concerned.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 727,
                                        "name": "Rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 728,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 729,
                                        "name": "Withdrawal of Studentship",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 730,
                                        "name": "Cancellation of the student score and rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 731,
                                        "name": "Expulsion",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 732,
                                        "name": "Cancellation of the student score and rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 733,
                                        "name": "Cancellation of the student score and rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 734,
                                        "name": "Cancellation of the student score and rustication for two  semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 735,
                                        "name": "Suspension until candidate complies",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 736,
                                        "name": "Cancellation of the student score and rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 737,
                                        "name": "Rustication for two  semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 738,
                                        "name": "Rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 739,
                                        "name": "Rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 740,
                                        "name": "Rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 741,
                                        "name": "Rustication for two semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    },
                                    {
                                        "id": 742,
                                        "name": "Cancellation of paper/examination",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 57
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 385,
                        "title": "HOSTEL",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 58,
                                "content": 385,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 743,
                                        "name": "34.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 744,
                                        "name": "35.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 745,
                                        "name": "36.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 746,
                                        "name": "37.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 747,
                                        "name": "38.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 748,
                                        "name": "39.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 749,
                                        "name": "40.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 750,
                                        "name": "41.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 751,
                                        "name": "42.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 752,
                                        "name": "43.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 753,
                                        "name": "44.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 754,
                                        "name": "45.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 755,
                                        "name": "46.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 756,
                                        "name": "47.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    },
                                    {
                                        "id": 757,
                                        "name": "48.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 58
                                    }
                                ]
                            },
                            {
                                "id": 59,
                                "content": 385,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 758,
                                        "name": "Playing loud music",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 759,
                                        "name": "Cooking in the hostel.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 760,
                                        "name": "Failure to keep room clean",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 761,
                                        "name": "Taking University property into  room without permission.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 762,
                                        "name": "Absence during room check at night",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 763,
                                        "name": "Holding unauthorized party",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 764,
                                        "name": "Extending party beyond 6:00pm",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 765,
                                        "name": "Going in group to attend party outside the Campus",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 766,
                                        "name": "Being found in the common room of opposite sex beyond 7.00p.m.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 767,
                                        "name": "Playing football within the hall of  residence",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 768,
                                        "name": "Bathing in an undesignated  place/corridor",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 769,
                                        "name": "Washing clothes in the room.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 770,
                                        "name": "Possession of prohibited electrical appliances",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 771,
                                        "name": "Swapping/Illegal occupation of  room",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    },
                                    {
                                        "id": 772,
                                        "name": "Being found in the room of opposite  sex.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 59
                                    }
                                ]
                            },
                            {
                                "id": 60,
                                "content": 385,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 773,
                                        "name": "Confiscation of the  music equipment. 3rd time offender: two weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 774,
                                        "name": "Confiscation of materials, 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 775,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 776,
                                        "name": "Return of property, 2 weeks of community work on subsequent occasions.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 777,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 778,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 779,
                                        "name": "2 weeks of community. work on subsequent occasions.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 780,
                                        "name": "Rustication for a  semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 781,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 782,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 783,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 784,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 785,
                                        "name": "Confiscation of electrical  appliances, and 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 786,
                                        "name": "Return to allocated room, and 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    },
                                    {
                                        "id": 787,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 60
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 386,
                        "title": "LIBRARY",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 61,
                                "content": 386,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 788,
                                        "name": "49.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 789,
                                        "name": "50.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 790,
                                        "name": "51.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 791,
                                        "name": "52.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 792,
                                        "name": "53.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 793,
                                        "name": "54.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 794,
                                        "name": "55.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 795,
                                        "name": "56.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 796,
                                        "name": "57.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 797,
                                        "name": "58.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    },
                                    {
                                        "id": 798,
                                        "name": "59.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 61
                                    }
                                ]
                            },
                            {
                                "id": 62,
                                "content": 386,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 799,
                                        "name": "Noise making.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 800,
                                        "name": "Refusal to produce valid Library card.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 801,
                                        "name": "Wearing noise-making shoes.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 802,
                                        "name": "Use of mobile phone within the  Library.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 803,
                                        "name": "Use of walkman radio and MP3 music centre",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 804,
                                        "name": "Use of personal books to reserve  seat.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 805,
                                        "name": "Mutilation of Library book.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 806,
                                        "name": "Loss of Library book.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 807,
                                        "name": "Stealing of Library books.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 808,
                                        "name": "Eating and drinking in the Library.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    },
                                    {
                                        "id": 809,
                                        "name": "Disobedience to Library staff.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 62
                                    }
                                ]
                            },
                            {
                                "id": 63,
                                "content": 386,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 810,
                                        "name": "Offender to be sent out.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 811,
                                        "name": "Denial of entry into the  Library.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 812,
                                        "name": "Denial of entry into the  Library.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 813,
                                        "name": "Confiscation of the phone.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 814,
                                        "name": "Confiscation of the equipment.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 815,
                                        "name": "Confiscation of the books.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 816,
                                        "name": "Payment of twice the cost price of the book.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 817,
                                        "name": "Payment of thrice the  cost price of the book.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 818,
                                        "name": "Payment of replacement cost plus rustication for one semester.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 819,
                                        "name": "Offender to be sent out, plus denial of entry into the Library for one  month.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    },
                                    {
                                        "id": 820,
                                        "name": "Denial of all Library privileges for one  semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 63
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 387,
                        "title": "CAFETERIA",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 64,
                                "content": 387,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 821,
                                        "name": "60.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    },
                                    {
                                        "id": 822,
                                        "name": "61.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    },
                                    {
                                        "id": 823,
                                        "name": "62.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    },
                                    {
                                        "id": 824,
                                        "name": "63.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    },
                                    {
                                        "id": 825,
                                        "name": "64.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    },
                                    {
                                        "id": 826,
                                        "name": "65.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 64
                                    }
                                ]
                            },
                            {
                                "id": 65,
                                "content": 387,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 827,
                                        "name": "Damage of any property in the  Cafeteria.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    },
                                    {
                                        "id": 828,
                                        "name": "Harassing or intimidating of operators.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    },
                                    {
                                        "id": 829,
                                        "name": "Disorderly conduct, not paying for services.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    },
                                    {
                                        "id": 830,
                                        "name": "Taking chair(s) out of cafeteria",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    },
                                    {
                                        "id": 831,
                                        "name": "Being found in the cafeteria after 9:00pm",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    },
                                    {
                                        "id": 832,
                                        "name": "Possessing/Using fake ticket (fraud)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 65
                                    }
                                ]
                            },
                            {
                                "id": 66,
                                "content": 387,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 833,
                                        "name": "Payment for repair or replacement of damaged material.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    },
                                    {
                                        "id": 834,
                                        "name": "2 weeks of community  work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    },
                                    {
                                        "id": 835,
                                        "name": "Payment for service rendered and 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    },
                                    {
                                        "id": 836,
                                        "name": "2 weeks of community  work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    },
                                    {
                                        "id": 837,
                                        "name": "2 weeks of community  work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    },
                                    {
                                        "id": 838,
                                        "name": "Refund of value of tickets used and rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 66
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    },
                    {
                        "id": 388,
                        "title": "*GENERAL",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": true,
                        "is_capital_letter": true,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 198,
                            "name": "Offences and Recommended Sanctions",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 11
                        },
                        "list_contents": [],
                        "list_table_header": [
                            {
                                "id": 67,
                                "content": 388,
                                "name": "S/N",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 839,
                                        "name": "66.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 840,
                                        "name": "67.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 841,
                                        "name": "68.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 842,
                                        "name": "69.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 843,
                                        "name": "70.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 844,
                                        "name": "71.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 845,
                                        "name": "72.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 846,
                                        "name": "73.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 847,
                                        "name": "74.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 848,
                                        "name": "75.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 849,
                                        "name": "76.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 850,
                                        "name": "77a.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 851,
                                        "name": "77b.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 852,
                                        "name": "78.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 853,
                                        "name": "79.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 854,
                                        "name": "80.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 855,
                                        "name": "81.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 856,
                                        "name": "82.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 857,
                                        "name": "83.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 858,
                                        "name": "84.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 859,
                                        "name": "85.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 860,
                                        "name": "86.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 861,
                                        "name": "87.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 862,
                                        "name": "88.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 863,
                                        "name": "89.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 864,
                                        "name": "90.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 865,
                                        "name": "91.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 866,
                                        "name": "92.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 867,
                                        "name": "93.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 868,
                                        "name": "94.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 869,
                                        "name": "95.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 870,
                                        "name": "96.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 871,
                                        "name": "97.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 872,
                                        "name": "98.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 873,
                                        "name": "99.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 874,
                                        "name": "100.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 875,
                                        "name": "101.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 876,
                                        "name": "102.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 877,
                                        "name": "103a.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 878,
                                        "name": "103b.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 879,
                                        "name": "104.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 880,
                                        "name": "105.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 881,
                                        "name": "106.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 882,
                                        "name": "107.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 883,
                                        "name": "108.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 884,
                                        "name": "109.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 885,
                                        "name": "110.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 886,
                                        "name": "111.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 887,
                                        "name": "112.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 888,
                                        "name": "113.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 889,
                                        "name": "114.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 890,
                                        "name": "115.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    },
                                    {
                                        "id": 891,
                                        "name": "116.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 67
                                    }
                                ]
                            },
                            {
                                "id": 68,
                                "content": 388,
                                "name": "OFFENCES",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 892,
                                        "name": "Being witness to the commission of an offence and failure to report complicity.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 893,
                                        "name": "Aiding, encouraging and abetting the commission of an offence.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 894,
                                        "name": "Failure to give self identification on 2 weeks of community being found committing an offence work plus penalty for the or giving false identification.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 895,
                                        "name": "Physical attack or assault of staff.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 896,
                                        "name": "Rudeness to staff.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 897,
                                        "name": "Caught outside Campus without exeat",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 898,
                                        "name": "Student caught at the staff quarters without valid permission from Dean, weeks Student Affairs",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 899,
                                        "name": "Wearing of multiple earrings",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 900,
                                        "name": "Fighting",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 901,
                                        "name": "Group fighting.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 902,
                                        "name": "Fighting with dangerous weapon",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 903,
                                        "name": "Bullying",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 904,
                                        "name": "Bullying and assault leading to bodily arm",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 905,
                                        "name": "Exposing body within the hostel (nudity)/ Displaying body tattoo",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 906,
                                        "name": "Forging of signature",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 907,
                                        "name": "Fraudulent withdrawal from bank or using other people's ATM without  owners' permission",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 908,
                                        "name": "Belonging to illegal (unregistered) association",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 909,
                                        "name": "Involvement in internet crime/cybercrime",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 910,
                                        "name": "Drinking, smelling, or being found with alcohol on campus.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 911,
                                        "name": "Smoking or being found with cigarette, Indian Hemp or other illicit drugs",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 912,
                                        "name": "Male and female found together in the dark or isolated places after 7.00pm",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 913,
                                        "name": "Being found in a compromisingly amorous position (male and female)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 914,
                                        "name": "Found with condom.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 915,
                                        "name": "Fornication.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 916,
                                        "name": "Being pregnant and unmarried (female)",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 917,
                                        "name": "Impregnating a fellow student",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 918,
                                        "name": "Indecent dressing that offends the  Dress Code on campus",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 919,
                                        "name": "Possessing obscene/pornographic materials in print and electronic forms",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 920,
                                        "name": "Going for party outside the Campus during semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 921,
                                        "name": "Stealing",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 922,
                                        "name": "Defecating and urinating outside approved places.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 923,
                                        "name": "Defacing the wall, building and furniture.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 924,
                                        "name": "Dumping of refuse at odd places",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 925,
                                        "name": "Jumping over the fence",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 926,
                                        "name": "Sexual assault/ harassment",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 927,
                                        "name": "Inviting or accommodating guest in the hostel without permission",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 928,
                                        "name": "Wearing of jewelries and banned ornaments by males",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 929,
                                        "name": "Damage of University property.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 930,
                                        "name": "Tampering with electrical appliances.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 931,
                                        "name": "Removal of electrical fittings",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 932,
                                        "name": "Willful damage to University property",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 933,
                                        "name": "Rioting and vandalization of University property.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 934,
                                        "name": "Bullying, molesting, intimidating fellow student",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 935,
                                        "name": "Cultism",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 936,
                                        "name": "Attempted rape",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 937,
                                        "name": "Rape",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 938,
                                        "name": "Being found with charm",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 939,
                                        "name": "Defrauding the University",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 940,
                                        "name": "Transferring tellers/tickets",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 941,
                                        "name": "Failure to appear before a panel",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 942,
                                        "name": "Failure to comply with sanction",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 943,
                                        "name": "Attempted fraud",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    },
                                    {
                                        "id": 944,
                                        "name": "Forging of approved exeat letter to leave campus",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 68
                                    }
                                ]
                            },
                            {
                                "id": 69,
                                "content": 388,
                                "name": "SANCTIONS",
                                "is_number": false,
                                "is_bold": true,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "table_body": [
                                    {
                                        "id": 945,
                                        "name": "2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 946,
                                        "name": "Same penalty for the offence should be applied.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 947,
                                        "name": "2 weeks of community work plus penalty for the offence commited",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 948,
                                        "name": "Rustication for 2  semesters.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 949,
                                        "name": "4 weeks at rehabilitation centre plus written  apology.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 950,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 951,
                                        "name": "Rustication for four weeks",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 952,
                                        "name": "Confiscation of earrings, 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 953,
                                        "name": "4 weeks of community work and 1 week of counseling",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 954,
                                        "name": "1 semester rustication/Rehabilitation",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 955,
                                        "name": "One semester rustication.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 956,
                                        "name": "One semester rustication.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 957,
                                        "name": "2 semester rustication",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 958,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 959,
                                        "name": "2 semesters  rustication/rehabilitation",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 960,
                                        "name": "Refund of monies taken and one semester  rustication.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 961,
                                        "name": "1 semester  rustication/rehabilitation",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 962,
                                        "name": "Expulsion and hand-over to law enforcement agents.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 963,
                                        "name": "Rustication for two semesters. Dismissal on subsequent occasions.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 964,
                                        "name": "Rustication for two semesters without appeal. Dismissal on subsequent occasions.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 965,
                                        "name": "2 weeks of community  work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 966,
                                        "name": "One semester  rustication/rehabilitation",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 967,
                                        "name": "Rustication for one  semester.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 968,
                                        "name": "Rustication for two  semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 969,
                                        "name": "Suspension for 12  months",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 970,
                                        "name": "Suspension for 12  months",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 971,
                                        "name": "3 weeks suspension and 1 week community work  upon resumption",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 972,
                                        "name": "Rustication for one semester/Rehabilitation.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 973,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 974,
                                        "name": "Rustication for one semester/Rehabilitation.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 975,
                                        "name": "Packing of feaces and 2 weeks of community work.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 976,
                                        "name": "2 weeks of community work and payment of cost of re-painting.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 977,
                                        "name": "2 weeks of community work",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 978,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 979,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 980,
                                        "name": "2 weeks of community work (first time offender; Rustication for  one semester on subsequent occasions.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 981,
                                        "name": "Confiscation of jewelry, 2 weeks of community work with counseling",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 982,
                                        "name": "Payment of replacement cost",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 983,
                                        "name": "Replacement and written warning plus fine for damages.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 984,
                                        "name": "Replacement and written warning plus fine for damages.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 985,
                                        "name": "Payment of replacement cost and rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 986,
                                        "name": "Expulsion",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 997,
                                        "name": "2 weeks of community work with one week of  counseling",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 998,
                                        "name": "Summary expulsion.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 999,
                                        "name": "Rustication for 2  semesters",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1000,
                                        "name": "Expulsion",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1001,
                                        "name": "One semester rustication",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1002,
                                        "name": "Restitution and  rustication for 2  semester.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1003,
                                        "name": "Rustication for 2 semesters.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1004,
                                        "name": "Suspension until candidate complies.",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1005,
                                        "name": "Rustication for one semester",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1006,
                                        "name": "2 weeks of community work with one week of counseling",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    },
                                    {
                                        "id": 1007,
                                        "name": "One semester rustication",
                                        "is_number": false,
                                        "is_bold": false,
                                        "is_italic": false,
                                        "is_capital_letter": false,
                                        "header": 69
                                    }
                                ]
                            }
                        ],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 12,
        "chapter": "CHAPTER SEVEN",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 199,
                "category": {
                    "id": 12,
                    "chapter": "CHAPTER SEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Reward System",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 389,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Punishment and reward system must go hand in hand to achieve a disciplined society. Joseph Ayo Babalola University has put in place a number of measures to ensure that all acts of anomie or anti-social behaviours are appropriately sanctioned. The Handbook contains a code of behaviour and sanctions for their infraction. In order to balance the equation, the University has put in place a reward system for academic excellence, sporting achievement and good behaviour.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 199,
                            "name": "University Reward System",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 12
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 200,
                "category": {
                    "id": 12,
                    "chapter": "CHAPTER SEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Objectives of JABU Reward System",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 390,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 200,
                            "name": "Objectives of JABU Reward System",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 12
                        },
                        "list_contents": [
                            {
                                "id": 1036,
                                "name": "To recognize openly students who keep social norms and/or  perform well academically.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 390
                            },
                            {
                                "id": 1037,
                                "name": "To encourage the spirit of healthy competition through sports and to promote excellence in sports.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 390
                            },
                            {
                                "id": 1038,
                                "name": "To encourage students in (1) above to continue and aspire to improve in their social behaviour and academic performance.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 390
                            },
                            {
                                "id": 1039,
                                "name": "To encourage the delinquent students to aspire to be of good behaviour and those in poor or average academic standing but with potential to excel, also to aspire to the level that can be rewarded.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 390
                            },
                            {
                                "id": 1040,
                                "name": "Generally to declare that it pays to do good.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 390
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 201,
                "category": {
                    "id": 12,
                    "chapter": "CHAPTER SEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Forms of Rewards",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 391,
                        "title": null,
                        "sub_title": "The JABU reward system includes (but not limited to) the  following:",
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 201,
                            "name": "Forms of Rewards",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 12
                        },
                        "list_contents": [
                            {
                                "id": 1041,
                                "name": "Cash grant for academic excellence and good behaviour.",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 391
                            },
                            {
                                "id": 1042,
                                "name": "Prizes for excellence in sports.",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 391
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 13,
        "chapter": "CHAPTER EIGHT",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 202,
                "category": {
                    "id": 13,
                    "chapter": "CHAPTER EIGHT",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Discipline of Students",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 392,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "It should be noted that the University Rules are operational and will be enforced whenever students are on Campus.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 202,
                            "name": "Discipline of Students",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 203,
                "category": {
                    "id": 13,
                    "chapter": "CHAPTER EIGHT",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Statutory Provision",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 393,
                        "title": "Statutory Provision (Section 17, Joseph Ayo Babalola University Law)",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": true,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 203,
                            "name": "Statutory Provision",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 174,
                                "name": null,
                                "body": "Subject to the provisions of this section, where it appears to the Vice Chancellor that any student of the University has been guilty of misconduct, the Vice Chancellor may, without prejudice to any other disciplinary powers, conferred on him by statute or regulations, direct:",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 393
                            },
                            {
                                "id": 175,
                                "name": null,
                                "body": "that the student shall not, during such period as may be specified in the direction, participate in such activities of the University, or make use of such facilities of the University, as may be so specified; or",
                                "number": "(a)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 393
                            },
                            {
                                "id": 176,
                                "name": null,
                                "body": "that the activities of the student shall, during such period as may be specified in the direction, be restricted in such manner as may be so specified; or",
                                "number": "(b)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 393
                            },
                            {
                                "id": 177,
                                "name": null,
                                "body": "that the student be rusticated for such period as may be specified in the direction; or",
                                "number": "(c)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 393
                            },
                            {
                                "id": 178,
                                "name": null,
                                "body": "that the student be expelled from the University.",
                                "number": "(d)",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 393
                            }
                        ]
                    },
                    {
                        "id": 394,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 203,
                            "name": "Statutory Provision",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [
                            {
                                "id": 1043,
                                "name": "Where a direction is given under subsection (1) (c) or (d) of this section in respect of any student; the student may, within the prescribed period and in the prescribed manner, appeal from the direction to the Council; and where such an appeal is brought, the Council shall after causing such inquiry to be made in the matter as the Council considers just, either confirm or set aside the direction or modify it in such a manner as the Council thinks fit.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1044,
                                "name": "Where a direction is given under subsection 2 of this section in respect of any student, the student may, within the prescribed period and in the prescribed manner, appeal from the direction to the Board of Trustees; and where such an appeal is brought, the Board, shall after causing such inquiry to be made in the matter as the Board considers just, either confirm or set aside the direction or modify it in such a manner as the Board deems fit.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1045,
                                "name": "The fact that an appeal from a direction is brought in pursuance of the last foregoing subsections shall not affect the operation of the direction while the appeal is pending.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1046,
                                "name": "The Vice Chancellor may delegate his power under this section to a Disciplinary Committee consisting of such members of the University as he may nominate.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1047,
                                "name": "Nothing in this section shall be construed as preventing the restriction or termination of a student's activities at the University otherwise than on the ground of misconduct.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1048,
                                "name": "It is hereby declared that a direction under subsection 1 (a) above may be combined with a direction under subsection 1 (b) of this section.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            },
                            {
                                "id": 1049,
                                "name": "No action can be brought before any court of law against the University until all internal mechanisms for redress have been exhausted.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 394
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 204,
                "category": {
                    "id": 13,
                    "chapter": "CHAPTER EIGHT",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Disciplinary Action",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 395,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Disciplinary Committee may recommend one or more of the following disciplinary actions:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 204,
                            "name": "Disciplinary Action",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 179,
                                "name": "Open warning in Congregation",
                                "body": "This shall be warning to offending student in the congregation during University Community Prayer meeting.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 180,
                                "name": "Reprimand",
                                "body": "This shall be in the nature of a warning to the student (s) that his/her behaviour has been unacceptable to the University and that any further behaviour of this sort will lead to a stiffer penalty.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 181,
                                "name": "Booking and Warning",
                                "body": "The offending student shall be issued a letter of warning and the offence committed shall be documented.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 182,
                                "name": "Imposition",
                                "body": "The offending students shall be asked to write a statement or phrase a number of times as shall be decided with the promise that the offence committed would not occur again.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 183,
                                "name": "Disciplinary Probation",
                                "body": "A student may be placed on disciplinary probation by the Dean for the balance of the period of registration at the University in the degree programme in which the student was registered at the time of the misconduct. A note to the effect that the student is on probation will appear in the student's file and will be removed upon completion of the degree requirements. The effect of being placed on disciplinary probation is that any further misconduct shall lead to a stiffer penalty.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 184,
                                "name": "Suspension/Rustication",
                                "body": "A student may be suspended from the University by the Vice Chancellor for a period of which shall not exceed three years. While suspended, a student may not register in the University and shall lose the right to attend lecture, write examinations and receive remuneration from University sources. Notice of a suspension shall be placed in the student's file and will appear on a transcript issued during the period of suspension. completion of the period of suspension, the student will be Upon eligible to reinstatement to full academic status and notice of suspension will be removed from the student's permanent record.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            },
                            {
                                "id": 185,
                                "name": "Expulsion",
                                "body": "A student may be expelled from the University only by the Vice Chancellor. Expulsion shall be permanent and a statement of such action shall be part of the student's permanent academic record and shall appear on all subsequent transcripts.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 395
                            }
                        ]
                    }
                ]
            },
            {
                "id": 205,
                "category": {
                    "id": 13,
                    "chapter": "CHAPTER EIGHT",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Compliance Unit",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 396,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": true,
                        "sub_category": {
                            "id": 205,
                            "name": "Compliance Unit",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": [
                            {
                                "id": 186,
                                "name": "Compliance Unit",
                                "body": "This unit is saddled with the responsibility of maintaining discipline among staff and students in the University and also to ensure compliance of staff and students with rules and regulations. Specifically the compliance officers are to:",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 187,
                                "name": null,
                                "body": "Apprehend offenders both staff and students",
                                "number": "•",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 188,
                                "name": null,
                                "body": "Report offenders both staff and students",
                                "number": "•",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 189,
                                "name": null,
                                "body": "Prevent crime/infraction of University rules and regulations through intelligence gathering among staff and students.",
                                "number": "•",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 190,
                                "name": "The areas of specific attention to the Compliance officers include but not limited to:",
                                "body": "Dress code for male and female members of the University Community.",
                                "number": "1.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 191,
                                "name": null,
                                "body": "Use of identity cards by staff and students",
                                "number": "2.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 192,
                                "name": null,
                                "body": "Cooking in the hostel",
                                "number": "3.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 193,
                                "name": null,
                                "body": "Illegal activities in the hostel and environs such as: hemp smoking, etc.",
                                "number": "4.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 194,
                                "name": null,
                                "body": "Illegal exit",
                                "number": "5.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 195,
                                "name": null,
                                "body": "Rudeness to staff",
                                "number": "6.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 196,
                                "name": null,
                                "body": "Attendance at mandatory religious meetings Wednesdays, Fridays and Sundays",
                                "number": "7.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 197,
                                "name": null,
                                "body": "Attendance at classes, especially academic staff and students",
                                "number": "8.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 198,
                                "name": null,
                                "body": "Intelligence gathering-Administrative and Technical staff",
                                "number": "9.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 199,
                                "name": null,
                                "body": "Examination malpractice.",
                                "number": "10.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 200,
                                "name": null,
                                "body": "Information gathering",
                                "number": "11.",
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            },
                            {
                                "id": 201,
                                "name": null,
                                "body": "Any student caught perpetrating any of the immoral acts listed above will be sanctioned based on the penal code published in Chapter 6 of this handbook.",
                                "number": null,
                                "is_number": false,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "content": 396
                            }
                        ]
                    }
                ]
            },
            {
                "id": 206,
                "category": {
                    "id": 13,
                    "chapter": "CHAPTER EIGHT",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Guidance and Counseling Unit",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 397,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "This unit is responsible for the general welfare of both staff and students. The importance of guidance and counseling in the life of an individual cannot be over emphasized. Hence the University established the Unit on the 1 August, 2012. The primary assignment of the Guidance Counselor is to guide, assist, lead, pilot, inform, aid and direct any individual who goes to the Guidance Counselor for assistance. The areas of responsibility of the Unit cover educational, vocational, psychosocial, pre-marital, marital, family, health and pastoral counseling. To make the work of the unit very effective, every student is expected to have his/her record with the Guidance Counselor. The areas of immediate interest of the Guidance Counselor include but not limited to:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 206,
                            "name": "Guidance and Counseling Unit",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 398,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 206,
                            "name": "Guidance and Counseling Unit",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 13
                        },
                        "list_contents": [
                            {
                                "id": 1050,
                                "name": "Developing in students, the awareness of early adjustment to their environment without prejudice through orientation service, this concerns the new students.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            },
                            {
                                "id": 1051,
                                "name": "Helping students develop positive attitude to self, others and appreciate the opportunity they have by being offered admission in the institution.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            },
                            {
                                "id": 1052,
                                "name": "Building in the students skills to meet with different life situations and proper adjustment to life in JABU.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            },
                            {
                                "id": 1053,
                                "name": "Helping an individual to understand himself and the world or his environment i.e. who he is, strength, weakness, ability, etc.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            },
                            {
                                "id": 1054,
                                "name": "Inculcating the habit of working together with the Management of the University, the Deans/HODs, Course Advisers, Staff and students with a view to moving the University forward",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            },
                            {
                                "id": 1055,
                                "name": "Providing counseling services to the Management, staff University forward. and students of the University.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 398
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 14,
        "chapter": "CHAPTER NINE",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 207,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Social Services",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 399,
                        "title": "Sports and Recreation",
                        "sub_title": null,
                        "number": null,
                        "body": "The University believes the adage that a sound mind resides in a sound body, therefore adequate facilities shall be provided for sports and recreation at all times. The University would encourage mass participation in sports while still fostering sports among Colleges, Departments, Hostels and with other Universities.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 207,
                            "name": "Social Services",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 208,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Sports and Recreation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 400,
                        "title": "Conduct during Sporting Activity",
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 208,
                            "name": "Sports and Recreation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [
                            {
                                "id": 1056,
                                "name": "Students shall conduct themselves with godly manner and in accordance with regulation on interpersonal relationship during sporting activities.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 400
                            },
                            {
                                "id": 1057,
                                "name": "Students shall wear proper sportswear during sporting activities.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 400
                            },
                            {
                                "id": 1058,
                                "name": "Students shall not illegally take possession of the University's sporting facility.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 400
                            },
                            {
                                "id": 1059,
                                "name": "Students shall not willfully damage any University property during sporting activity.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 400
                            },
                            {
                                "id": 1060,
                                "name": "Students shall not disrupt any sporting activity.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 400
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 401,
                        "title": "Sporting Hours",
                        "sub_title": null,
                        "number": null,
                        "body": "The official University sporting hours shall be 4:00 p.m. to 6:00 p.m. on Wednesdays. There shall be no sporting activity during academic period (8:00 a.m. to 4:00 p.m.) without permission from the University authority.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 208,
                            "name": "Sports and Recreation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 209,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Banking Facility and Payment of Fees",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 402,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The University has a branch of Guaranteed Trust Bank (GTB) and UBA on Campus where banking transactions could be undertaken. Students are not encouraged to keep large sums of money with them in the halls of residence. The University or y of its officials will not accept liability for any loss arising any therein.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 209,
                            "name": "Banking Facility and Payment of Fees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 403,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Students are therefore encouraged to open personal accounts with the Bank on Campus for safe keeping of their funds. It will also make it easy for parents and relations to transfer monies to such accounts and avoid the risk and inherent dangers of traveling out of Campus. Students are also enjoined to keep their account document (ATM card, ID card and withdrawal slips) carefully.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 209,
                            "name": "Banking Facility and Payment of Fees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 404,
                        "title": "PAYMENT OF FEES",
                        "sub_title": null,
                        "number": null,
                        "body": "The University has accounts with the UBA with account number 1018822796 and GTB account number 0049084367 where students are expected to pay in their school fees.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 209,
                            "name": "Banking Facility and Payment of Fees",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 210,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Shopping Mall",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 405,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "In view of the distance between Ikeji Arakeji and other major towns, the University has constructed a Shopping Mall on Campus for students and staff members where everyday basic needs could be obtained at moderate prices. This is to minimize the need for staff and students to travel outside Campus for these items, and avoid the risk of accidents on our roads.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 210,
                            "name": "University Shopping Mall",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 406,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 210,
                            "name": "University Shopping Mall",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [
                            {
                                "id": 1061,
                                "name": "Operating Hours:",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 406
                            },
                            {
                                "id": 1062,
                                "name": "7:00 a.m.-8:00p.m.",
                                "number": "Monday-Saturday",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 406
                            },
                            {
                                "id": 1063,
                                "name": "12 noon-8:00 p.m.",
                                "number": "Sunday",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 406
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 407,
                        "title": "NOTE:",
                        "sub_title": null,
                        "number": null,
                        "body": "The Shopping mall is closed on Wednesdays between 2:45 p.m. and 4:00 p.m.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 210,
                            "name": "University Shopping Mall",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 211,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "University Bookshop",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 408,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "As a policy, books will be sold at economic rather than commercial prices. It is an act of misconduct for lecturers to sell their own books or by other authors directly to students. It is also an act of misconduct for any student to buy such books or hand-outs. Students are therefore requested in their own interest to report any Staff who offers books and handouts for sale. Staff books that meet relevant university standard will be put on the reading list of the College. The Bookshop will also stock branded exercise books of various sizes, stationery items, files and other souvenirs with University name and logo.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 211,
                            "name": "University Bookshop",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 212,
                "category": {
                    "id": 14,
                    "chapter": "CHAPTER NINE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Catering Services",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 409,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is a fully residential University and provides cafeteria service to all students. It is the belief of the proprietors of the institution, that community living within the hostels and cafeteria system of eating, would provide the unique opportunity for socialization for acculturation and imbibing the Christian ethics and morality that could make an educated person a complete personality, adequately prepared to serve God and humanity. The proprietors of Joseph Ayo Babalola University also believe that in order to maintain good health in readiness for rigorous academic work, students must feed well.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 212,
                            "name": "Catering Services",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 410,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "To achieve this objective, the University sets up a Food Committee on which representatives of students also serve to ensure that the quality and quantity of food served are commensurate with prices paid by students. The University runs a cafeteria system where students are expected to eat on pay as you eat basis.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 212,
                            "name": "Catering Services",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 411,
                        "title": "Cafeteria Regulations",
                        "sub_title": null,
                        "number": null,
                        "body": "Students are expected to observe the following regulations:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 212,
                            "name": "Catering Services",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [
                            {
                                "id": 1064,
                                "name": "Students shall be on queue and wait for their turn to be attended to by the cafeteria operators.",
                                "number": "(i)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1065,
                                "name": "Disorderly behaviour in the cafeteria, such as shunting or jumping the queue, is prohibited as food will be served on the basis of first come, first serve.",
                                "number": "(ii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1066,
                                "name": "Plates, cutlery and cooking utensils must not be removed from the cafeteria. Students found with cafeteria materials would be disciplined and surcharged.",
                                "number": "(iii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1067,
                                "name": "Students will be charged for breakages and damages to utensils and other cafeteria materials.",
                                "number": "(iv)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1068,
                                "name": "Students are encouraged to offer silently, prayer of thanksgiving before eating their food.",
                                "number": "(v)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1069,
                                "name": "Students must be appropriately dressed before being allowed to enter the cafeteria.",
                                "number": "(vi)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1070,
                                "name": "Students are enjoined to leave the cafeteria as soon as possible after meal so as not to keep others waiting for space.",
                                "number": "(vii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1071,
                                "name": "Need for special diet on medical grounds should be reported immediately to Student Affairs Office. In necessary cases, additional charge may be imposed.",
                                "number": "(viii)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1072,
                                "name": "Students shall not be found in the cafeteria during religious activities and during the official academic hours.",
                                "number": "(ix)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            },
                            {
                                "id": 1073,
                                "name": "The use of polythene nylon bags and disposable plates is prohibited",
                                "number": "(x)",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 411
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 412,
                        "title": "NOTE:",
                        "sub_title": null,
                        "number": null,
                        "body": "The Cafeteria shall be opened only during meal periods indicated above and should be closed during Wednesday Community service.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 212,
                            "name": "Catering Services",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 14
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 15,
        "chapter": "CHAPTER TEN",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 213,
                "category": {
                    "id": 15,
                    "chapter": "CHAPTER TEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Health Services",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 214,
                "category": {
                    "id": 15,
                    "chapter": "CHAPTER TEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Spiritual Healing and Deliverance",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 413,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Christ Apostolic Church believes strongly in faith and divine healing. Provision is therefore made for spirit filled men of God to pray for those who are in need of physical healing and spiritual deliverance. They would also assist students with poor academic progress and other forms of difficulties. Indeed, River Ariran, which forms a boundary of the Campus is known for its healing power imparted to it by God through Apostle Joseph Ayo Babalola. People all over the world visit River Ariran to wash or take its water for drinking to heal all types of ailments.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 214,
                            "name": "Spiritual Healing and Deliverance",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 215,
                "category": {
                    "id": 15,
                    "chapter": "CHAPTER TEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Student Rehabilitation Centre",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 414,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Where it is established that a student's persistent deviant and anti-social behaviour can be traced to spiritual attack, the University shall provide a Rehabilitation Centre for spiritual deliverance for such a student. Rather than send such a student on a conventional suspension, he is sent to the rehabilitation for a period of time as may be determined. At the Centre, such problem students shall receive spiritual counseling and deliverance prayer from prayer warriors specially deployed to the Centre full time for this and similar assignments.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 215,
                            "name": "Student Rehabilitation Centre",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 216,
                "category": {
                    "id": 15,
                    "chapter": "CHAPTER TEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Medical Examination and Health Care Delivery",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 415,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 216,
                            "name": "Medical Examination and Health Care Delivery",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [
                            {
                                "id": 1074,
                                "name": "On admission, all students are expected to pay for, and undergo comprehensive medical examination which may include Chest X-ray and other relevant test. The cost of the medical examination and other relevant tests will be as fixed by the Council according to prevailing rate.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1075,
                                "name": "In addition to the faith and divine healing facilities, the University has a Medical Centre on Campus with qualified medical and nursing staff available on duty twenty-four hours a day to take care of students' health problems.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1076,
                                "name": "Student seeking medical attention shall present his/her tracing card to the medical officer on duty.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1077,
                                "name": "Where a student's health problem persists beyond forty eight hours or on the advice of the Medical Doctor in charge, such student may be transferred to the nearest secondary or tertiary medical institution around and/or the parents may be invited to come and take the student away for appropriate medical attention.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1078,
                                "name": "For the primary health care, students are expected to pay medical fee as prescribed by Council from time to time, while parents are expected to pay for incidental expenses arising from the transfer of their children to other secondary or tertiary medical institutions or to their homes.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1079,
                                "name": "Students on special medication shall fully disclose their medication to the University Medical Officers. Failure to do so will exonerate the University authorities of any liabilities.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1080,
                                "name": "Student not willing to take treatment from the University Medical Officers shall be required to put it in writing through a DAMA form.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1081,
                                "name": "Every case of ill health must be reported to the University Medical Centre. No student shall engage in self medication.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1082,
                                "name": "The Medical Centre shall not attend to students during chapel activities except in cases of emergency.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1083,
                                "name": "Students who are aware of any medical condition that is contagious should excuse his/her self from the University after such approval has been sought.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            },
                            {
                                "id": 1084,
                                "name": "The Medical Centre shall allow visitors only during the following visitation hours:",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 415
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 416,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Mondays to Saturdays: 10:00 a.m. - 11:00a.m.; 6:00p.m. - 7:00p.m.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 216,
                            "name": "Medical Examination and Health Care Delivery",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 417,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Sundays: 2:00 p.m. - 4:00p.m.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 216,
                            "name": "Medical Examination and Health Care Delivery",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 418,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 216,
                            "name": "Medical Examination and Health Care Delivery",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 15
                        },
                        "list_contents": [
                            {
                                "id": 1085,
                                "name": "The special telephone line to the Medical Centre is 08163224969.",
                                "number": "12.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 418
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 16,
        "chapter": "CHAPTER ELEVEN",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 217,
                "category": {
                    "id": 16,
                    "chapter": "CHAPTER ELEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Student Association",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 218,
                "category": {
                    "id": 16,
                    "chapter": "CHAPTER ELEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Student Unionism",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 419,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Joseph Ayo Babalola University is a unique private University and will protect its uniqueness at all costs. It will encourag students to participate in decision making processes, especiall as they affect students' welfare. In appropriate cases, students are represented on Committees set up to deal with their welfare. For the purpose of articulating their grievances or suggestions students will be encouraged to hold democratic elections to choose their leaders at various levels.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 218,
                            "name": "Student Unionism",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 420,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 218,
                            "name": "Student Unionism",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [
                            {
                                "id": 1086,
                                "name": "University Level - Joseph Ayo Babalola University Studen Union.",
                                "number": "a.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 420
                            },
                            {
                                "id": 1087,
                                "name": "College Level",
                                "number": "b.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 420
                            },
                            {
                                "id": 1088,
                                "name": "Departmental Level",
                                "number": "c.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 420
                            },
                            {
                                "id": 1089,
                                "name": "Hostel Level",
                                "number": "d.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 420
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 219,
                "category": {
                    "id": 16,
                    "chapter": "CHAPTER ELEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Other Associations",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 421,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "These are associations different from those above such as dram group, literary and debating society, etc; which are based or academic disciplines; or social and charitable groups, such a Music Society or charities. Every such society must be registered with the Dean, Student Affairs stating the name, qualification for nmembership, list of members and objectives of the association Objectives which are in accordance with biblical injunctions and tenets of Christ Apostolic Church and/ or those promoting academic pursuits of students, shall only be accepted for the registration. No unregistered society shall operate on Campus. In order to promote the uniqueness of Joseph Ayo Babalola University, the Student Union as a body shall not affiliate with the National Union of Nigeria Students (NANS) and shall not participate in any of its activities. However academic or religious societies may relate with their counterparts in other universities without compromising the philosophy and mission of the University.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 219,
                            "name": "Other Associations",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 220,
                "category": {
                    "id": 16,
                    "chapter": "CHAPTER ELEVEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Qualification Requirements for Office Holders",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 422,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "In order to promote healthy academic competition and to ensure that academically weak students do not compound their academic problem by dissipating energies and time on student politics. The Students' Affairs Office shall set up a screening committee to screen students intending to hold office in the Student Union or Academic associations.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 220,
                            "name": "Qualification Requirements for Office Holders",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 423,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Only students with Cumulative Grade Point Average (CGPA) of 3.5 for President/Vice president and 3.0 for other posts and above shall be eligible to contest for elective positions, or be appointed to positions of responsibility in the University.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 220,
                            "name": "Qualification Requirements for Office Holders",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 424,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Students who have been found guilty of any examination malpractice or infringement of any aspect of the Code of Conduct shall not be eligible to contest elective positions or be appointed to positions of responsibility in the University.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 220,
                            "name": "Qualification Requirements for Office Holders",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 425,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "A student shall be of sound morals and good character to be eligible to contest elective positions, or be appointed to positions of responsibility in the University.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 220,
                            "name": "Qualification Requirements for Office Holders",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 16
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 17,
        "chapter": "CHAPTER TWELVE",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 221,
                "category": {
                    "id": 17,
                    "chapter": "CHAPTER TWELVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Arrival to Campus",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 426,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Upon arrival at the Campus gate:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 221,
                            "name": "Arrival to Campus",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 17
                        },
                        "list_contents": [
                            {
                                "id": 1090,
                                "name": "The student shall submit himself/herself for checking by the security officer.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            },
                            {
                                "id": 1091,
                                "name": "All personal items e.g. Laptops, Computer desktop, printer, scanner and other electronics shall be registered with the security officers at the gate and with the Students Affairs Office.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            },
                            {
                                "id": 1092,
                                "name": "All laptops must have the name of the owner conspicuously inscribed on them",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            },
                            {
                                "id": 1093,
                                "name": "Students and/or their visitors shall be properly dressed in accordance with the University's dress code before they are allowed into the Campus.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            },
                            {
                                "id": 1094,
                                "name": "Students shall show evidence of payment of school fees before they are allowed into the Campus.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            },
                            {
                                "id": 1095,
                                "name": "Student shall obtain clearance and receipt from the Bursary and then go to the Students' Affairs Office to obtain clearance for allocation to room.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 426
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 222,
                "category": {
                    "id": 17,
                    "chapter": "CHAPTER TWELVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Use of Personal Vehicle by Students on Campus",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": []
            },
            {
                "id": 223,
                "category": {
                    "id": 17,
                    "chapter": "CHAPTER TWELVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Procedure for Checking into Hall of Residence",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 427,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 223,
                            "name": "Procedure for Checking into Hall of Residence",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 17
                        },
                        "list_contents": [
                            {
                                "id": 1096,
                                "name": "Procedure for Checking into Halls of Residence 1. Halls/rooms are allocated to students by Hall wardens subject to the approval of the Dean, Students' Affairs.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1097,
                                "name": "Students shall show evidence of payment of school fees and clearance from the Students' Affairs office to the Hall Porters before they are allowed into the Hall of residence.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1098,
                                "name": "Students shall submit themselves for checking by the Hall Porters before being allowed into the hall of residence.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1099,
                                "name": "Students shall submit their belongings for checking by the Hall Porters before being allowed into the hall of residence.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1100,
                                "name": "Students shall ensure that prohibited items are not brought into the hall/room.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1101,
                                "name": "Students are expected to sign for items of furniture and beddings allocated to them for their use in the room.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1102,
                                "name": "Room key is to be kept in the Porter's Lodge whenever the student is outside.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1103,
                                "name": "No student shall collect a key of a room to which he is not allocated.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1104,
                                "name": "Students are expected to verify that electric fittings: fan, switches, socket, are in order and shall sign to that effect.",
                                "number": "9.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1105,
                                "name": "Students are not ordinarily allowed to bring private vehicle to the Campus.",
                                "number": "10.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1106,
                                "name": "Vehicles, owned and driven by students, when allowed into the Campus, under special circumstance, must be registered with the Security Unit and a tally obtained, while entering the Campus.",
                                "number": "11.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            },
                            {
                                "id": 1107,
                                "name": "No students should ride or patronize okada around the campus.",
                                "number": "12.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 427
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 224,
                "category": {
                    "id": 17,
                    "chapter": "CHAPTER TWELVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Procedure for Leaving Campus during Semester",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 428,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "As a residential University, the authorities are responsible and accountable in loco parentis for the care and security of students. Consequently, students are not allowed to leave the Campus during session without following appropriate procedure and processes:",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 224,
                            "name": "Procedure for Leaving Campus during Semester",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 17
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 429,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 224,
                            "name": "Procedure for Leaving Campus during Semester",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 17
                        },
                        "list_contents": [
                            {
                                "id": 1108,
                                "name": "Organized trips/ field trips would be allowed on Saturdays between 8.00 am and 4.00 p.m",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1109,
                                "name": "Request for the trip must be made to Vice chancellor through the Dean, Student Affairs indicating destination, purpose of trip, time of departure and time of arrival. List of students involved must be attached.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1110,
                                "name": "Approval for group trip must be obtained at least a week before the day of the trip.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1111,
                                "name": "Individual request to travel out of Campus must be forwarded through the Hall Warden to the Dean, Student Affairs and permission obtained at least 48 hours before departure. Permission shall be granted for satisfactory reasons only after confirmation with parents and with appropriate travel plan. Emergency cases will be treated as such.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1112,
                                "name": "Permission shall not normally be granted to depart Campus for social functions.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1113,
                                "name": "Request to travel on medical grounds must be supported with medical report from the University Medical Officers.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1114,
                                "name": "Absence from Campus that will result in absence from lectures must be reported to the relevant Head of Department prior to commencement of journey. The Head of Department shall convey the information to the appropriate lecturers, so that such absence could be indicated on attendance register.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            },
                            {
                                "id": 1115,
                                "name": "Academic trips organized by Departments must receive prior approval from the relevant Dean and the Vice Chancellor.",
                                "number": "8.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 429
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 225,
                "category": {
                    "id": 17,
                    "chapter": "CHAPTER TWELVE",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Departure from Campus on Vacation",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 430,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 225,
                            "name": "Departure from Campus on Vacation",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 17
                        },
                        "list_contents": [
                            {
                                "id": 1116,
                                "name": "At the commencement of each holiday, all students must ensure that they are properly checked out by the Porters to ensure that University properties issued to them are returned intact. Students will be expected to pay for repair of damaged properties and replacement of missing items.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 430
                            },
                            {
                                "id": 1117,
                                "name": "All personal effects must be removed from the rooms and taken home during inter-semester and end of session holidays.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 430
                            },
                            {
                                "id": 1118,
                                "name": "Rooms must be kept very tidy before departure of students. Failure to keep this regulation will attract sanction.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 430
                            },
                            {
                                "id": 1119,
                                "name": "Keys must be returned to the Porter's Lodge before departure. Under no circumstance should a student take room key away with him/her on holidays.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 430
                            },
                            {
                                "id": 1120,
                                "name": "All procedure for checking out must be concluded and room vacated within 48 hours after the last examination.",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 430
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    },
    {
        "id": 18,
        "chapter": "CHAPTER THIRTEEN",
        "is_bold": true,
        "is_capital_letter": true,
        "is_italic": false,
        "sub_category": [
            {
                "id": 226,
                "category": {
                    "id": 18,
                    "chapter": "CHAPTER THIRTEEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Matriculation Oath/Code of Conduct",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 431,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "Every student shall adhere strictly to his/her Matriculation Oath/ Code of Conduct, a copy of which is contained at the back of this handbook.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 226,
                            "name": "Matriculation Oath/Code of Conduct",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 227,
                "category": {
                    "id": 18,
                    "chapter": "CHAPTER THIRTEEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Student Code of Conduct",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 432,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "In signing the Code of Conduct, I fully recognize that Joseph Ayo Babalola University was founded to be and is committed to being a Christian institution and as such fosters a lifestyle of commitment to Jesus Christ as personal Saviour and Lord. As a student of JABU and one who represents the University, it is my personal commitment to be a person of integrity in word, love, spirit, faith and purity.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 227,
                            "name": "Student Code of Conduct",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [
                            {
                                "id": 1121,
                                "name": "I PLEDGE to apply myself wholeheartedly to my intellectual pursuits and seek to be transformed by renewing of mind for the glory of God.",
                                "number": "1.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1122,
                                "name": "I PLEDGE to grow in spirit in developing my own relationship with God.",
                                "number": "2.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1123,
                                "name": "I PLEDGE to develop my body with sound health habits through proper feeding and physical exercise.",
                                "number": "3.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1124,
                                "name": "I PLEDGE to cultivate good relationships socially with others by seeking to love them with the love of God and be at peace with them at all times.",
                                "number": "4.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1125,
                                "name": "I PLEDGE to keep my total being from all immoral and illegal acts and habits whether on or off Campus. (To this end, I will not take any illegal drugs; I will not commit illicit sexual acts; I will not use tobacco; I will not take alcohol; I will not engage in any behaviour that is contrary to the rules and regulations of the University).",
                                "number": "5.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1126,
                                "name": "I PLEDGE to promptly attend classes, all required chapel services on Campus, and on Sundays to attend the house of worship.",
                                "number": "6.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1127,
                                "name": "I PLEDGE to abide by all the rules and regulations that are adopted by University Administration. I understand that JABU is a private institution and I therefore have no vested right in the governing of the school.",
                                "number": "7.",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            },
                            {
                                "id": 1128,
                                "name": "I PLEDGE to NEVER join cults or participate in secret and nocturnal organizations (A standing curse cultism is upon in JABU).",
                                "number": "8",
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 432
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 433,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "I accept that Joseph Ayo Babalola University reserves the right to require the withdrawal of a student at any time if deemed appropriate in the judgment of the authorities of the University.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 227,
                            "name": "Student Code of Conduct",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 434,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "I will keep JABU CODE OF CONDUCT carefully. I understand that, with the signing of this document, I enter into contract with JABU to keep the entire Code of Conduct, and as a record of such, it becomes a part of my permanent file.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 227,
                            "name": "Student Code of Conduct",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 435,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": true,
                        "is_paragraph": false,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 227,
                            "name": "Student Code of Conduct",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [
                            {
                                "id": 1129,
                                "name": "NAME OF STUDENT (in capitals)...",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": false,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1130,
                                "name": "COURSE...",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1131,
                                "name": "COLLEGE...",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1132,
                                "name": "DEPARTMENT..",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1133,
                                "name": "YEAR OF ENTRY..",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1134,
                                "name": "CURRENT LEVEL OR YEAR..",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1135,
                                "name": "SIGNATURE..",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            },
                            {
                                "id": 1136,
                                "name": "DATE....",
                                "number": null,
                                "is_bold": false,
                                "is_italic": false,
                                "is_capital_letter": true,
                                "is_border": false,
                                "is_center": false,
                                "content": 435
                            }
                        ],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            },
            {
                "id": 228,
                "category": {
                    "id": 18,
                    "chapter": "CHAPTER THIRTEEN",
                    "is_bold": true,
                    "is_capital_letter": true,
                    "is_italic": false
                },
                "name": "Conclusion",
                "is_bold": false,
                "is_capital_letter": false,
                "is_italic": false,
                "content": [
                    {
                        "id": 436,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The Student Handbook is your guide to a successful career in this University. It is therefore important for every student not only to be familiar with the contents of the document, but to internalize its provisions. Every student is required to study the document closely and be prepared to sit for and pass a short examination on the contents of the Hand Book as a prequalification for matriculation. Matriculation may be delayed in respect of student who fails to attain a score of 70% at the examination.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 228,
                            "name": "Conclusion",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    },
                    {
                        "id": 437,
                        "title": null,
                        "sub_title": null,
                        "number": null,
                        "body": "The authorities of Joseph Ayo Babalola University wish you a happy and successfully stay.",
                        "is_bold": false,
                        "is_center": false,
                        "is_list": false,
                        "is_paragraph": true,
                        "is_number": false,
                        "is_italic": false,
                        "is_table": false,
                        "is_capital_letter": false,
                        "is_another_content": false,
                        "sub_category": {
                            "id": 228,
                            "name": "Conclusion",
                            "is_bold": false,
                            "is_capital_letter": false,
                            "is_italic": false,
                            "category": 18
                        },
                        "list_contents": [],
                        "list_table_header": [],
                        "list_sub_content": []
                    }
                ]
            }
        ]
    }
]
""";

class TaskController {
  Future<List<RestApi>> getPostApi() async {
    await Future.delayed(Duration(seconds: 3));
    log("Loading Datas......");

    try {
      List jsonDecoded = jsonDecode(handbookDatas);
  

      final fetcher = List.from(jsonDecoded).map((e) => RestApi.fromJson(e)).toList();
    

      return fetcher;
    } catch (e) {
      log("Error decoding JSON: $e");
      return [];
    }
  }
}

final userProvider = Provider<TaskController>((ref) => TaskController());
    
 