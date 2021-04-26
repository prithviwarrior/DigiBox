(function ($) {
 "use strict";
  

            c3.generate({
                bindto: '#lineChart',
                data:{
                    columns: [
                        ['data1', 30, 200, 100, 400, 150, 250],
                        ['data2', 50, 20, 10, 40, 15, 25]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    }
                }
            });

            c3.generate({
                bindto: '#slineChart',
                data:{
                    columns: [
                        ['data1', 30, 200, 100, 400, 150, 250],
                        ['data2', 130, 100, 140, 200, 150, 50]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    },
                    type: 'spline'
                }
            });

            c3.generate({
                bindto: '#scatter',
                data:{
                    xs:{
                        data1: 'data1_x',
                        data2: 'data2_x'
                    },
                    columns: [
                        ["data1_x", 3.2, 3.2, 3.1, 2.3, 2.8, 2.8, 3.3, 2.4, 2.9, 2.7, 2.0, 3.0, 2.2, 2.9, 2.9, 3.1, 3.0, 2.7, 2.2, 2.5, 3.2, 2.8, 2.5, 2.8, 2.9, 3.0, 2.8, 3.0, 2.9, 2.6, 2.4, 2.4, 2.7, 2.7, 3.0, 3.4, 3.1, 2.3, 3.0, 2.5, 2.6, 3.0, 2.6, 2.3, 2.7, 3.0, 2.9, 2.9, 2.5, 2.8],
                        ["data2_x", 3.3, 2.7, 3.0, 2.9, 3.0, 3.0, 2.5, 2.9, 2.5, 3.6, 3.2, 2.7, 3.0, 2.5, 2.8, 3.2, 3.0, 3.8, 2.6, 2.2, 3.2, 2.8, 2.8, 2.7, 3.3, 3.2, 2.8, 3.0, 2.8, 3.0, 2.8, 3.8, 2.8, 2.8, 2.6, 3.0, 3.4, 3.1, 3.0, 3.1, 3.1, 3.1, 2.7, 3.2, 3.3, 3.0, 2.5, 3.0, 3.4, 3.0],
                        ["data1", 1.4, 1.5, 1.5, 1.3, 1.5, 1.3, 1.6, 1.0, 1.3, 1.4, 1.0, 1.5, 1.0, 1.4, 1.3, 1.4, 1.5, 1.0, 1.5, 1.1, 1.8, 1.3, 1.5, 1.2, 1.3, 1.4, 1.4, 1.7, 1.5, 1.0, 1.1, 1.0, 1.2, 1.6, 1.5, 1.6, 1.5, 1.3, 1.3, 1.3, 1.2, 1.4, 1.2, 1.0, 1.3, 1.2, 1.3, 1.3, 1.1, 1.3],
                        ["data2", 2.5, 1.9, 2.1, 1.8, 2.2, 2.1, 1.7, 1.8, 1.8, 2.5, 2.0, 1.9, 2.1, 2.0, 2.4, 2.3, 1.8, 2.2, 2.3, 1.5, 2.3, 2.0, 2.0, 1.8, 2.1, 1.8, 1.8, 1.8, 2.1, 1.6, 1.9, 2.0, 2.2, 1.5, 1.4, 2.3, 2.4, 1.8, 1.8, 2.1, 2.4, 2.3, 1.9, 2.3, 2.5, 2.3, 1.9, 2.0, 2.3, 1.8]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    },
                    type: 'scatter'
                }
            });
           
            var chart = c3.generate({
                bindto: '#chart',
                data: {
                    columns: [
                        ['AllMovies', 30,50,100,60,150,250],
                        ['Comedy', 50,20,10,40,15,25],
                        ['Romance', 30,2,44,55,150,55],
                        ['Thriler', 50,20,22,66,15,25]
                    ]
                    ,
                    colors:{
                        AllMovies: '#C44BC7',
                        Comedy: '#864BC7',
                        Romance: '#4B4EC7',
                        Thriler: '#C74B8C'
                    },
                    type: 'bar'
                },
                bar: {
                    width: {
                        ratio: 0.5
                    }                   
                }
            });          

            c3.generate({
                bindto: '#stocked',
                data:{
                    columns: [
                        ['AllMovies', 30,200,11,22,150,250],
                        ['Comedy', 50,20,10,40,15,25],
                        ['Romance', 30,200,33,44,55,11],
                        ['Thriler', 50,20,10,40,15,25]
                    ],
                    colors:{
                        AllMovies: '#C44BC7',
                        Comedy: '#864BC7',
                        Romance: '#4B4EC7',
                        Thriler: '#C74B8C'
                    },
                    type: 'bar',
                    groups: [
                        ['AllMovies', 'Comedy','Romance','Thriler']
                    ]
                }
            });

           
            var chart = c3.generate({
                bindto: '.stockedHome',
                data: {
                    columns: [
                        ['AllTv', 30,200,100,11,33,250],
                        ['Crime', 20,20,10,40,15,25],
                        ['Drama', 30,10,100,400,150,250],
                        ['Documentry', 50,20,10,40,15,25]
                    ]
                    ,
                    colors:{
                        AllTv: '#C44BC7',
                        Crime: '#864BC7',
                        Drama: '#4B4EC7',
                        Documentry: '#C74B8C'
                    },
                    type: 'bar'
                },
                bar: {
                    width: {
                        ratio: 0.5
                    }                   
                }
            }); 

            c3.generate({
                bindto: '.stockedHomeNone',
                data:{
                    columns: [
                        ['AllTv', 30,200,100,400,150,250],
                        ['Crime', 20,20,10,40,15,25],
                        ['Drama', 30,10,100,400,150,250],
                        ['Documentry', 50,20,10,40,15,25]
                    ],
                    colors:{
                        AllTv: '#006DF0',
                        Crime: '#933EC5',
                        Drama: '#C74B62',
                        Documentry: '#4BA0C7'
                    },
                    type: 'bar',
                    groups: [
                        ['AllTv', 'Crime','Drama','Documentry'],
                    ]
                }
            });

            c3.generate({
                bindto: '#gauge',
                data:{
                    columns: [
                        ['data', 91.4]
                    ],

                    type: 'gauge'
                },
                color:{
                    pattern: ['#006DF0', '#933EC5']

                }
            });

            c3.generate({
                bindto: '#pie',
                data:{
                    columns: [
                        ['English', 30],
                        ['Spanish', 40],
                        ['French', 10],
                        ['Other', 20]
                    ],
                    colors:{
                        English: '#006DF0',
                        Spanish: '#933EC5',
                        French: '#B04BC7',
                        Other: '#4BC2C7'
                    },
                    type : 'pie'
                }
            });

            c3.generate({
                bindto: '.pieHome',
                data:{
                    columns: [
                        ['data1', 30],
                        ['data2', 120]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    },
                    type : 'pie'
                }
            });


            c3.generate({
                bindto: '.pieHome1',
                data:{
                    columns: [
                        ['English', 10],
                        ['Spanish', 20],
                        ['French', 10],
                        ['CC', 60]
                    ],
                    colors:{
                        English: '#006DF0',
                        Spanish: '#933EC5',
                        French: '#B04BC7',
                        CC: '#4BC2C7'
                    },
                    type : 'pie'
                }
            });

            c3.generate({
                bindto: '.pieHome2',
                data:{
                    columns: [
                        ['data1', 10],
                        ['data2', 50]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    },
                    type : 'pie'
                }
            });


            c3.generate({
                bindto: '.pieHome5',
                data:{
                    columns: [
                        ['data1', 10],
                        ['data2', 12]
                    ],
                    colors:{
                        data1: '#006DF0',
                        data2: '#933EC5'
                    },
                    type : 'pie'
                }
            });


           
            
            c3.generate({
                bindto: '.stockedHome4',
                data:{
                    columns: [
                        ['AllAudio', 30,200,100,400,150,250],
                        ['Podcast', 50,20,10,40,15,25],
                        ['Pop', 30,200,100,400,150,250],
                        ['Rock', 50,20,10,40,15,25]
                    ],
                    colors:{
                        AllAudio: '#C44BC7',
                        Podcast: '#864BC7',
                        Pop: '#4B4EC7',
                        Rock: '#C74B8C'
                    },
                    type: 'bar',
                    // groups: [
                    //     ['AllAudio', 'Podcast','Pop','Rock']
                    // ]
                }
            });

            c3.generate({
                bindto: '.stockedHome10',
                data:{
                    columns: [
                        ['Data1', 30,200,100,400,150,250],
                        ['Data2', 50,20,10,40,15,25]
                    ],
                    colors:{
                        Data1: '#C44BC7',
                        Data2: '#864BC7'
                    },
                    type: 'bar'
                },
                bar: {
                    width: {
                        ratio: 0.5
                    }                   
                }
            });

            c3.generate({
                bindto: '.stockedHome11',
                data:{
                    columns: [
                        ['Movies', 30,200,100,400,150,250],
                        ['TV', 50,20,10,40,15,25],
                        ['Audio', 50,20,10,40,15,25],
                        ['Totals', 50,20,10,40,15,25]
                    ],
                    colors:{
                        Movies: '#624BC7',
                        TV: '#C74BB0',
                        Audio: '#A04BC7',
                        Totals: '#C74B8C'
                    },
                    type: 'bar'                   
                },
                bar: {
                    width: {
                        ratio: 0.5
                    }                   
                }
            });


})(jQuery); 