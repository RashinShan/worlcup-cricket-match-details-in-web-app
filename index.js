

var con = require('./connection');

var express = require("express");


const router = express.Router();
var app = express();
var uname;
var bodyParser = require('body-parser');
app.use('/', router);

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
let cookieParser = require('cookie-parser');
app.set('view engine', 'ejs');
app.use(cookieParser());

//localhost home  page

router.get('/', function (req, res) {
  res.render(__dirname + '/homepage');
});

router.get('/homepage', function (req, res) {
  res.render(__dirname + '/homepage');
});

router.get('/SignUp', function (req, res) {
  res.render(__dirname + '/SignUp');
});






router.get('/Adminloging', function (req, res) {
  res.render(__dirname + '/Adminloging');
});

router.get('/admin', function (req, res) {
  res.render(__dirname + '/admin');
});









router.get('/frontpage', function (req, res) {
  res.render(__dirname + '/frontpage');
});

app.post("/loging", function (req, res) {
  
  var username = req.body.username;
  var password = req.body.password;
  uname = username;
 
  var sql1 = "select username from login where UserName = ? and Password= ? ";
  con.query(sql1, [username, password], function (error, result) {
    if (error) console.log(error);
    if (result.length > 0) {
      res.redirect("/frontpage");
    } else {
      res.redirect("/");
    }
  });
});


app.post("/adminloging", function (req, res) {
  
  var username = req.body.username;
  var password = req.body.password;
  uname = username;
 
  var sql1 = "select username from admin where username = ? and pwd= ? ";
  con.query(sql1, [username, password], function (error, result) {
    if (error) console.log(error);
    if (result.length > 0) {
      res.redirect("/admin");
    } else {
      res.redirect("/");
    }
  });
});


app.post('/register', function (req, res) {
 
  var username = req.body.username;
  var password = req.body.password;
  var email = req.body.email;
  var phonenumber = req.body.phonenumber;
  var sql = "INSERT INTO userdetails(UserName,Password,Email,PhoneNumber)VALUES('" + username + "','" + password + "','" + email + "','" + phonenumber + "')";
  var sql2="INSERT INTO login(UserName,Password)VALUES('" + username + "','" + password + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
   
    con.query(sql2, function (error, result) {
      if (error) throw error;
      res.redirect("/");
  
    });

  });
});







router.get('/Match', function (req, res) {
  var sql = "select * from matches ";

  var sql = [
    "select * from matches",
    "select * from country",
    "select * from stadium",
    "select * from team",
    "select * from player_captain"
    

  ];

  con.query(sql.join(';'), function (error, result) {
    if (error) console.log(error);
   
    res.render(__dirname + "/Match", { matches : result[0],country:result[1],stadium:result[2],team:result[3],player_captain:result[4]});
  });
});




app.post('/addmatchesdata', function (req, res) {
 
  var MatchID = req.body.MatchID;
  var Date = req.body.Date;
  var NumberofGoals = req.body.NumberofGoals;
  var Type = req.body.Type;
  var Duration = req.body.Duration;
  var TeamID = req.body.TeamID;
  var StadiumID = req.body.StadiumID;
  var sql = "INSERT INTO matches(MatchID,Date,NumberofGoals,Type,Duration,TeamID,StadiumID)VALUES('" + MatchID + "','" + Date + "','" + NumberofGoals + "','" + Type + "','" + Duration + "','" + TeamID + "','" + StadiumID + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});

app.post('/delmatchesdata', function (req, res) {
  
  var MatchID = req.body.MatchID;
  var sql = "DELETE FROM matches WHERE MatchID='" + MatchID + "' ";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});





app.post('/addstadiumdata', function (req, res) {
 
  var StadiumID = req.body.StadiumID;
  var Name = req.body.Name;
  var TournamentID = req.body.TournamentID;
  var MatchID = req.body.MatchID;
  var CountryID = req.body.CountryID;
 
  var sql = "INSERT INTO stadium(StadiumID,Name ,TournamentID,MatchID,CountryID)VALUES('" + StadiumID + "','" +Name+ "','" +TournamentID + "','" +MatchID + "','" + CountryID + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});

app.post('/delstadiumdata', function (req, res) {
  
  var MatchID = req.body.MatchID;
  var sql = "DELETE FROM stadium WHERE StadiumID='" +  StadiumID + "' ";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});




app.post('/addcountrydata', function (req, res) {
 
  var CountryID = req.body.CountryID;
  var Name = req.body.Name;
  var Players = req.body.Players;
  var TournamentID= req.body.TournamentID;
  var TeamID = req.body.TeamID;
  var StadiumID = req.body.StadiumID;
 
  var sql = "INSERT INTO country(CountryID,Name ,Players,TournamentID,TeamID,StadiumID)VALUES('" + CountryID + "','" +Name+ "','" +Players + "','" +TournamentID + "','" +TeamID + "','" +StadiumID + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});

app.post('/delcountrydata', function (req, res) {
  
  var MatchID = req.body.MatchID;
  var sql = "DELETE FROM country WHERE CountryID='" +  CountryID + "' ";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});



app.post('/addplayerdata', function (req, res) {
 
  var TeamID = req.body.TeamID ;
  var Name = req.body.Name;
  var NumberofPlayers = req.body.NumberofPlayers;
  var MatchID= req.body. MatchID;
  var TournamnetID = req.body.TournamnetID;
  var Player_captain = req.body.Player_captain;
  var CountryID = req.body.CountryID;
 
  var sql = "INSERT INTO team(TeamID,Name ,NumberofPlayers,MatchID,TournamnetID,Player_captain ,CountryID)VALUES('" + TeamID + "','" +Name+ "','" + NumberofPlayers+ "','"+MatchID +"','" +TournamnetID + "','" +Player_captain + "','" +CountryID + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});

app.post('/delplayerdata', function (req, res) {
  
  var MatchID = req.body.MatchID;
  var sql = "DELETE FROM team WHERE TeamID='" +  TeamID + "' ";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});





app.post('/addplayercaptaindata', function (req, res) {
 
  var PlayerID = req.body.PlayerID ;
  var Name = req.body.Name;
  var Role = req.body.Role;
  var TeamID = req.body. TeamID ;
  var Year = req.body.Year ;

 
  var sql = "INSERT INTO  player_captain(PlayerID,Name ,Role,TeamID ,Year)VALUES('" + PlayerID + "','" +Name+ "','" + Role+ "','" +TeamID + "','" +Year + "')";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});

app.post('/delplayercaptaindata', function (req, res) {
  
  var MatchID = req.body.MatchID;
  var sql = "DELETE FROM player_captain WHERE PlayerID='" + PlayerID + "' ";
  con.query(sql, function (error, result) {
    if (error) throw error;
    res.redirect("/admin");

  });
});



app.listen(3000);


