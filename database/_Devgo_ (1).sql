-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 18, 2015 at 12:45 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devgo`
--
CREATE DATABASE IF NOT EXISTS `devgo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `devgo`;

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `ID` int(11) NOT NULL,
  `ArticleName` varchar(255) NOT NULL,
  `Texts` text,
  `Notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`ID`, `ArticleName`, `Texts`, `Notes`) VALUES
(1, 'THE FIRST RULE OF UX', '“You cannot not communicate. Every behaviour is a kind of communication. Because behaviour does not have a counterpart (there is no anti-behaviour), it is not possible not to communicate.”—Paul Watzlawick’s First Axiom of Communication\r\n\r\nThis is the first rule of UX. Everything a designer does affects the user experience. From the purposeful addition of a design element to the negligent omission of crucial messaging, every decision is molding the future of the people we design for.\r\n\r\nAs such, one of the primary goals of any good designer is communicating the intended message…the one that leads to a positive user experience. The copy-writing, the color of your text, the alignment of form labels, using all-caps or going lowercase on those navigation links—even the absence of a design pattern—are all part of this communication.\r\n\r\nKnowing this, we can ask (and hopefully answer) the question, “Does this element support or contradict what I am trying to communicate to the user?” And by asking this you will find yourself refining and improving the little things; the things that often go unsaid or unnoticed, that ultimately make up the user’s experience.', NULL),
(2, 'WHAT MAKES THE USER EXPERIENCE?', 'The user experience is made up of all the interactions a person has with your brand, company, or organization. This may include interactions with your software, your web site, your call center, an advertisement, with a sticker on someone else’s computer, with a mobile application, with your Twitter account, with you over email, maybe even face-to-face. The sum total of these interactions over time is the user experience.\r\n\r\nThe interaction designer plans for these moments. Part of their responsibility is to make all interactions positive, and includes aspects of the software, the copy-writing, the graphics, layout, flows, physical experiences. It’s a shame when one part of the experience is top notch and another is dreadful. Cohesion is important.\r\n\r\nUser experience spans multiple practices. Let’s take an example from architecture. If an architect were hired by a deep-pocketed client to create a great user experience, they wouldn’t stop at the structure in which people live. They would pay attention to the surrounding greenery, the arc of the driveway, the views of the property at each angle…maybe even the way guests are greeted and the table is set. All of these touch-points are important parts of the larger system…the house is merely one piece of the puzzle.\r\n\r\nWeb designers, traditionally secure in the role of page creators, now have a wider purview. The landscape on which people experience our design is wider than ever before. Thus, we must adapt our ways to include all aspects of experience.', NULL),
(3, 'SOLVE EXISTING PROBLEMS', 'In our attempt to create amazing user experiences, we often want to push the envelope, to create something new, to show  people a bright new future. But too often we fall into the novelty trap. The novelty trap is when, in an attempt to dazzle our clients and our users, we focus too much on the new and not enough on the now.\r\n\r\nTo create great user experiences we need to focus on the now. In reality the problems of our users are painfully mundane and often obvious. It is our task to ease this pain, and in doing so we might not invent some amazing new thing, but that’s OK. Success is incremental.\r\n\r\nConsider the following companies, widely regarded as purveyors of great user experiences:\r\n\r\nNetflix\r\nNetflix lets you rent the exact same movies as every other rental service, but they make it easy to do right from your home and they work hard to give you solid movie recommendations. They succeeded by removing the painful problem imposed by nearly all rental companies, the dreaded late fee. Sometimes a good experience results not from addition, but from removal! Netflix did not solve a new problem, they solved an old one.\r\n\r\nZappos\r\nZappos sells one of the most mundane products imaginable: shoes. But by solving a widespread problem with faceless web-based companies (bad service), they stand out and shine. Service is one of the oldest problems known to business…in any age or time providing great service results in a great user experience.\r\n\r\nJetblue\r\nJetblue did something simple: they added personal viewing screens to the seat-backs in their airplanes. None of the technology was new, but the experience of being in control of your in-flight entertainment was. Couple that with food that isn’t horrible, and they quickly improved on the user experience of flight.\r\n\r\nThese companies did not solve future problems, they solved well-known, existing ones. That’s how you provide great user experiences, by alleviating the well-known pain points that already exist in the world.\r\n\r\nSo, when trying to articulate the problem to be solved, focus on the now, not the new.', NULL),
(4, 'SOLUTIONS ARE EASY IF YOU KNOW THE PROBLEM', '“Good design is problem solving.” – Jeffrey Veen\r\n\r\nYou could say that actually solving the problem is good design in practice.\r\n\r\nThis rarely boils down to choosing whether or not to apply that “1px inner glow” or rearranging a few blocks of content. Quite often, it means eliminating one’s own assumptions and applying problem-solving techniques in order to truly identify the problem area. Some techniques that can help are:\r\n\r\nKaizen (aka the Five Whys)\r\nThe process of asking “Why?” five times exploring cause-and-effect relationships in order to find the root problem\r\nAssumption Reversal \r\nTaking all known assumptions and reversing them in order to trigger innovation\r\nAnalogy \r\nInvestigating whether a similar problem has been solved in another field\r\nThe output of these methods is ideally an actionable problem statement. This will help guide the process of creating an experience that meets or exceeds the target users expectations.\r\n\r\nAllowing or finding a solution that results in an engaging, delightful experience is the result of careful analysis and the application of the appropriate design elements to support and communicate the desired intent of your product.\r\n\r\nAs Bertrand Russell said, “The greatest challenge to any thinker [designer] is stating the problem in a way that will allow a solution.”', NULL),
(5, 'DELIVERABLES VS. DELIVERY', 'Wireframes, flow diagrams, personas, card sorts, content strategy documents, etc. All of these things are important to design, and designers need some combination of them to synthesize their user research and communicate what they’re doing with the other members of the team.\r\n\r\nBut too often these deliverables are the last line of contact for designers. Too often these deliverables are what designers prepare and then hand off to implementors. Then they shuffle off to create more deliverables and the cycle is repeated.\r\n\r\nIn the end deliverables are merely artifacts of the design process. They are not the final design, they are not the artifact of experience. The end user never interacts with them…they interact with the product or service that is actually delivered.\r\n\r\nThat’s the difference: deliverables are divorced from delivery.\r\n\r\nThus, the task of a UX designer, in order to stay true to our calling, doesn’t stop at any deliverable. Even if our “job” is to create wireframes, we cannot be satisfied with passing off wireframes to other team members. If we are truly concerned with the experience of the people who use our product/service, we will infiltrate their world…we will demand to know the quality of their experience.\r\n\r\nMany UX designers are judged on the quality of their deliverables. This is necessary to a point, we must make sure each step is faithfully executed. But to truly be a user experience designer, we must have a longer scope. We can’t stop at deliverables. We must extend through delivery.\r\n\r\nDeliverables are diminishing in importance. Sketches, super important to early design synthesis, have fleeting value. They are valuable for a very short period of time. Design, implement, iterate, move on. Record the learning, but don’t judge the sketch, judge the resulting experience.\r\n\r\nSo, if you’re not involved in the day to day feedback loop of your user’s experience, make sure you get involved. Ask about your feedback channels: support emails, call-center requests, twitter mentions, all of it. Do regular surveys and user testing. Investigate. Demand data. If you don’t, you’re just creating deliverables and missing the forest for the trees.\r\n\r\nExperience, in the end, cannot be captured in a deliverable.', NULL),
(6, 'SKETCH, SKETCH, SKETCH', 'I’ve heard it so many times: “I can’t sketch a stick-figure to save my life.”\r\n\r\nSome people are afraid of showing their drawing to others. They think they’ll be ridiculed if their sketch looks like it was drawn by a five-year old.\r\n\r\nIn truth, it doesn’t matter if you are good at sketching. The less formal the sketch, the better. In fact, avoid the urge to use a pencil as it leaves too much room for you to ponder, erase, re-draw, second-guess…\r\n\r\nBut a permanent marker, now you’re talking. A nice big, fat Sharpie is the perfect tool because it requires you to really think through your idea before you put the pen to the paper. “What if it doesn’t work or the layout’s all wrong? ” Great! Grab a new piece of paper and start from where you left off, having learned something valuable in a matter of minutes.\r\n\r\nThe sketch is not the end goal. The end goal of the drawing process is what you learn while sketching. So don’t worry if you can’t sketch. In fact, if you’re too good you might just fool yourself into thinking your sketch is a deliverable. It’s not. The real value of sketching is that it allows you to explore and refine ideas in a quick, iterative and visual manner with little overhead or learning curve. Rapid ideation around flow and interaction, layout and hierarchy, can be quickly established, rearranged or discarded wholesale—all without ever touching a computer.\r\n\r\nOne added benefit to sketching your ideas is the ability to share, collaborate and improve upon an idea. Show a stakeholder the sketch and then encourage them to mark it up. You can even give them the red pen and let them revel in the power!\r\n\r\nIn the end, you will gain a deeper understanding of the problem you are trying to solve, and a head-start on implementing a great design!', NULL),
(7, 'CONSTRAINTS FUEL CREATIVITY', 'We are often led to believe that the more freedom we have the more creative we will be. Full creative license? Sweet. Unlimited budget? Awesome! No timetable? Even better.\r\n\r\nYeah, right.\r\n\r\nI say embrace your constraints and draw out of them the very solution that sets you apart from the crowd.\r\n\r\nThe imposition of constraints can lead to great design decisions. Limitations often force you to view things from a perspective you are not accustomed to and, in turn, can stimulate the clarity and purpose of the design, rather than debilitate and hinder your creative process.\r\n\r\nOne of the most obvious and currently talked about examples is the iPhone (and as of yesterday, the iPad). There are incredible limitations with such a device. So many that people initially speculated it would be a massive failure. However, the team at Apple truly embodies this ethos. Despite physical constraints, technological constraints, time constraints and, of course, the “Steve” constraint, the team was able to unlock innovative solutions that allowed them to create something truly unique.\r\n\r\nAre there problems with the iPhone? Yes. Of course there are. The point is if you want to create a truly compelling experience, don’t complain about your constraints; embrace them. And in doing so, set your creativity on fire!', NULL),
(8, 'APPLE’S IPAD: FOR WHAT AUDIENCE?', 'After years of speculation, Apple finally released a tablet computer yesterday called the iPad. There was fanfare! There was rejoicing!\r\n\r\nThere was also much criticism: everything from it doesn’t have a camera or USB port to it doesn’t support Flash or HDMI out to it doesn’t let you multi-task. In 24 hours we have dozens of reasons why the iPad will fail in the marketplace.\r\n\r\nBut what if the iPad simply isn’t for the people who are critiquing it? What if the experience the Apple designers have in mind isn’t the one the tech writers and bloggers have been dreaming about for a half-decade? What if you, early-adopter geek fanperson, aren’t actually the target audience?\r\n\r\nHumans suffer from a subjective viewpoint. We see the universe with us at the center of it. It’s almost impossible to gauge anything outside of our own desires…when we size up a new gadget such as the iPad we consider first and foremost: “What good is it TO ME?”.\r\n\r\nUser experience designers, however, cannot long suffer this fate. We must design (and hopefully critique other designs) from a more objective viewpoint.\r\n\r\nAs our initial subjective viewpoint fades, we might consider the iPad anew. Judging from the videos and early reviews, it makes many common activities very easy such as email, watching videos, and sharing photos. So let’s ask: “Who out there, what market, is this attractive to?”\r\n\r\nThe iPad is attractive to people for whom a laptop is overkill. Many spouses, parents, siblings, and children in our lives do not use computers in the same way we do. They are likely the primary audience for this device…the people who don’t need single pixel precision but can get by on single finger precision. They may use the iPad in the kitchen, the living room, the bedroom, even the bathroom. But they probably won’t use it in the office…\r\n\r\nAs designers and critics we must get out of our own head. Subjectivity, our inability to see as others do, can be a cruel master.', NULL),
(9, 'UTILITY VS. BEAUTY', 'A good designer always works to keep the form, function and the aesthetic quality of a design in balance throughout the life of a project. Just because something looks good doesn’t mean its useful. And just because something is useful does not make it beautiful.\r\n\r\nMore often than we want to admit, we use glitz and glam—or worse, the current popular design trend—to hide the areas where we simply dont have an elegant solution appropriate to the problem at hand. It is too easy to get caught in the trap of focusing on “making it pretty” without giving consideration to the actual purpose of the design.\r\n\r\nAt the same time, a designer should understand that even the most utilitarian product can benefit from subtle, refined aesthetic treatments and turn what is a dull and boring, yet necessary, task into something enjoyable and engaging.\r\n\r\nThe most elegant solution will yield a design that is gracefully tempered with restraint and precision—both useful and beautiful.', NULL),
(10, 'DREAMERS OF DAY', 'Designers are an odd lot: creative, moody, pensive, thoughtful, weird. But the one characteristic that separates designers from others is action. They make stuff that didn’t exist before. They take the idea living deep inside their head and pull it out, realizing it in a drawing, prototype, or product. Unlike most people, they don’t just think about it. They don’t just brainstorm. They don’t just imagine something better and then talk themselves out of it. Instead, they act.\r\n\r\nThey are, in the words of T.E. Lawrence, dreamers of day.\r\n\r\n“All men dream; but not equally.\r\nThose who dream by night in the dusty\r\nrecesses of their minds\r\nAwake to find that it was vanity; \r\nBut the dreamers of day are dangerous men. \r\nThat they may act their dreams with open \r\neyes to make it possible.”\r\n\r\nT. E. Lawrence (aka Lawrence of Arabia)', NULL),
(11, 'THE USAGE LIFECYCLE', ' \r\nAs users interact with your product or service, they proceed through a series of steps called the usage lifecycle. The usage lifecyle is a mapping of the user’s experience with your design. Like other lifecycles, the usage lifecycle has a beginning, middle, and an end, each of which are characterized by different behaviors and goals. Though they be similar in every other way, people act very differently in each stage of the lifecycle.\r\n\r\nHere is an overview of the stages:\r\n\r\nFirst Contact: When people become aware of your product/service. This is when people discover and becoming interested in what you’ve designed. This is where their perceptions are formed…do they understand what your design is all about? Do they understand what use it is to them? Do they get how amazing it is?\r\nFirst Time Use: Probably the most critical moment in the lifecycle of your design. It’s the first real impression, the first actual use of your design and when a user seriously considers a long-term engagement. Unfortunately, this stage is often overlooked in the design process because it happens so quickly…first time use is over in an instant.\r\nOngoing Use: Regular use of your product/service.\r\nPassionate Use: Though it is the goal of every designer to have people using their design passionately, this stage is rarely attained. But when it is, users get into a state in which they are highly productive/immersed in your design, and often share that passion with others. This is how organic growth happens…when your design really takes off.\r\nDeath: When people stop using your product/service. This can happen at any time during the lifecycle. Perhaps your design is too hard to use. Perhaps it doesn’t have a critical feature someone needs to do work. Perhaps someone found a better way to do something. Whatever the reason, UX designers gain insight by regularly doing post-mortems on the lifecycles that were cut short.\r\nWhen you start framing design in terms of the usage lifecycle, you begin to see how each stage has different design challenges. What was a huge show-stopping issue for users at first contact is never a problem for them in later stages. What is a complex issue during regular use never occurs to someone just starting out. In this way the point at which people are in the lifecycle determines context for the user as much as anything else. Just as much as we need to “know your user” we need to know what they’re doing…rather, where they are in the usage lifecycle.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ColorNotes`
--

CREATE TABLE `ColorNotes` (
  `id` int(11) NOT NULL,
  `ColorCode` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ColorNotes`
--

INSERT INTO `ColorNotes` (`id`, `ColorCode`) VALUES
(11, '#141b35'),
(9, '#6880bf'),
(14, '#9cb6d4'),
(12, '#abdfe9'),
(10, '#c2e3db'),
(2, '#ededed'),
(15, 'seagreen'),
(13, 'tomato');

-- --------------------------------------------------------

--
-- Table structure for table `FontNotes`
--

CREATE TABLE `FontNotes` (
  `FontName` varchar(225) NOT NULL,
  `WebAddress` varchar(225) NOT NULL,
  `Notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FontNotes`
--

INSERT INTO `FontNotes` (`FontName`, `WebAddress`, `Notes`) VALUES
('Open Sans', 'http://mailchimp.com/pro/', ' This landing page was created for the company’s latest and most powerful feature set, MailChimp Pro.'),
('NF2Text. ', 'http://www.houseind.com/showandtell/2012/04/12/MOGENSENXHOUSEINDUSTRIES', 'Home/Interior '),
('Lato', 'http://www.streamlineicons.com/', 'Graphic Design '),
('Vollkorn', 'http://techgnotic.deviantart.com/journal/Dave-Elliott-An-Authentic-Citizen-384734344', 'Literature /Kids /Art'),
('April', 'http://formdusche.de/work/hessisches-staatstheater-wiesbaden/', 'Performing Arts '),
('April', 'http://formdusche.de/work/hessisches-staatstheater-wiesbaden/', 'Performing Arts '),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('Nimbus sans', 'http://enso.readymag.com/', 'Branding/Identity '),
('Jason', 'www.jason.com', 'awsome'),
('Elaine', 'www.elaine.com', 'iloveu');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(4) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`) VALUES
(1, 'jason', 'jason'),
(2, 'elaine', 'elaine'),
(3, 'dan', 'dan'),
(4, 'michael', 'michael '),
(5, 'ricardo', 'ricardo '),
(6, 'andrew', 'andrew');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(100) NOT NULL,
  `fname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webAddress`
--

CREATE TABLE `webAddress` (
  `id` int(4) NOT NULL,
  `wireframeAddress` varchar(65) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webAddress`
--

INSERT INTO `webAddress` (`id`, `wireframeAddress`) VALUES
(2, 'http://www.verse-co.com/'),
(3, 'http://www.verse-co.com/'),
(4, 'http://studiofurious.com/'),
(5, 'http://www.asil.sk/duro-balogh/cim-chces-byt-plagat-1'),
(6, 'http://www.ateliersouverts.net/'),
(34, 'http://typologic.nl/'),
(35, 'http://www.createjs.com/docs/tweenjs/classes/Tween.html'),
(36, 'http://www.createjs.com/docs/tweenjs/classes/Tween.html'),
(37, 'http://www.verse-co.com/'),
(38, 'http://www.verse-co.com/'),
(39, 'http://www.verse-co.com/'),
(40, 'http://www.verse-co.com/'),
(41, 'http://www.verse-co.com/'),
(42, 'http://www.verse-co.com/'),
(43, 'http://fontsinuse.com/'),
(44, 'http://www.verse-co.com/'),
(45, 'http://www.verse-co.com/'),
(46, 'http://www.verse-co.com/'),
(47, 'http://www.verse-co.com/'),
(48, 'http://www.verse-co.com/'),
(49, 'http://www.minmingsheng.design'),
(50, 'http://www.elainezhang.design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ColorNotes`
--
ALTER TABLE `ColorNotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color` (`ColorCode`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webAddress`
--
ALTER TABLE `webAddress`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Article`
--
ALTER TABLE `Article`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ColorNotes`
--
ALTER TABLE `ColorNotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `webAddress`
--
ALTER TABLE `webAddress`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
