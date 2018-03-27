(*Datatypes for Modeling Project*)
datatype characterName = Ryu | Sonic | Ganondorf | Marth | Mario | Lucas | DonkeyKong | Pikachu | Pit | Luigi | Cloud | Roy | KingDeDeDe | Fox | Link | CaptainFalcon;

(*Statistics*)
datatype weight = Weight of int;
datatype runSpeed = RunSpeed of real;
datatype walkSpeed = WalkSpeed of real;
datatype airSpeed = AirSpeed of real;
datatype fallSpeed = FallSpeed of real;
datatype fastFallSpeed = FastFallSpeed of real;
datatype airAcceleration = AirAcceleration of real;
datatype gravity = Gravity of real; 
datatype sHAirTime = SHAirTime of int;
datatype maxJumps = MaxJumps of int;
datatype wallJump= WallJump of bool; 
datatype wallCling = WallCling of bool;
datatype crawl = Crawl of bool;
datatype tether = Tether of bool; 
datatype jumpsquat = Jumpsquat of int; 
datatype softLandingLag = SoftLandingLag of int; 
datatype hardLandingLag = HardLandingLag of int;
datatype fHAirTime = FHAirTime of int;

(*General Ground Moves*)
datatype hitBoxActive1 = HitBoxActive1 of int;
datatype hitBoxActive2 = HitBoxActive2 of int * int;
datatype firstActionableFrame = FirstActionableFrame of int;
datatype baseDamage = BaseDamage of int;
datatype twoAngle = TwoAngle of int * int;
datatype threeAngle = ThreeAngle of int * int * int;
datatype fourAngle = FourAngle of int * int * int * int;
datatype angle = Angle of int;
datatype baseKnockBack = BaseKnockBack of int;
datatype weightBaseKnockBack = WeightBaseKnockBack of int;
datatype knockBackGrowth = KnockBackGrowth of int;
datatype weightDependent = WeightDependent of bool;
datatype intangibility = Intangibility of int * int;

(*Ground Moves Ryu [18 items]*)
datatype lightJab1Ryu = LightJab1Ryu of hitBoxActive2 * firstActionableFrame *
baseDamage * twoAngle * weightBaseKnockBack * knockBackGrowth;
datatype mediumJab1Ryu = MediumJab1Ryu of hitBoxActive2 * firstActionableFrame *
baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype jab2Ryu =  Jab2Ryu of hitBoxActive2 * firstActionableFrame * baseDamage
* twoAngle * weightBaseKnockBack * knockBackGrowth;
datatype jab3 = Jab3 of hitBoxActive2 * firstActionableFrame * baseDamage * angle
* baseKnockBack * knockBackGrowth;
datatype dashAttack = DashAttack of hitBoxActive2 * firstActionableFrame *
baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype dashAttackLate = DashAttackLate of hitBoxActive2 *
firstActionableFrame * baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype lightFTilt = LightFtilt of hitBoxActive2 * firstActionableFrame *
baseDamage * twoAngle * baseKnockBack * knockBackGrowth;
datatype mediumFTiltHit1 = MediumFTiltHit1 of hitBoxActive1 * firstActionableFrame * baseDamage * angle * weightBaseKnockBack * knockBackGrowth;
datatype mediumFTiltHit2 = MediumFTiltHit2 of hitBoxActive2 *
firstActionableFrame * baseDamage * angle * baseKnockBack * knockBackGrowth; 
datatype lightUTilt = LightUTilt of hitBoxActive2 * firstActionableFrame *
baseDamage * twoAngle * baseKnockBack * knockBackGrowth;
datatype mediumUTilt = MediumUTilt of hitBoxActive1 * firstActionableFrame *
baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype mediumUTiltLate = MediumUTiltLate of hitBoxActive2 *
firstActionableFrame * baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype lightDTilt = LightDTilt of hitBoxActive2 * firstActionableFrame *
baseDamage * angle * weightBaseKnockBack * knockBackGrowth;
datatype mediumDTilt = MediumDTilt of hitBoxActive2 * firstActionableFrame *
baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype fSmash = FSmash of hitBoxActive2 * firstActionableFrame * baseDamage *
angle * baseKnockBack * knockBackGrowth;
datatype uSmash = USmash of hitBoxActive2 * firstActionableFrame * baseDamage *
angle * baseKnockBack * knockBackGrowth;
datatype uSmashLate = USmashLate of hitBoxActive2 * firstActionableFrame *
baseDamage * angle * baseKnockBack * knockBackGrowth;
datatype dSmash = DSmash of hitBoxActive2 * firstActionableFrame * baseDamage *
fourAngle * baseKnockBack * knockBackGrowth; 
(*Grabs Ryu*)
datatype standingGrab = StandingGrab of hitBoxActive2 * firstActionableFrame;
datatype dashGrab = DashGrab of hitBoxActive2 * firstActionableFrame;
datatype pivotGrab = PivotGrab of hitBoxActive2 * firstActionableFrame;
(*Throws Ryu*)
datatype fThrow = FThrow of weightDependent * baseDamage * angle * baseKnockBack
* knockBackGrowth;
datatype bThrow = BThrow of weightDependent * baseDamage * angle * baseKnockBack
* knockBackGrowth;
datatype uThrow = UThrow of weightDependent * baseDamage * angle * baseKnockBack
* knockBackGrowth;
datatype dThrow = DThrow of weightDependent * baseDamage * angle * baseKnockBack
* knockBackGrowth;

(*Miscellaneous*)
datatype spotDodge = SpotDodge of intangibility * firstActionableFrame;
datatype forwardRoll = ForwardRoll of intangibility * firstActionableFrame;
datatype backRoll = BackRoll of intangibility * firstActionableFrame;
datatype airDodge = AirDodge of intangibility * firstActionableFrame;

(*Rest of the Datatypes for RYU [29 items]*)
datatype ryuAttacks = RyuAttacks of lightJab1Ryu * mediumJab1Ryu * jab2Ryu *
jab3* dashAttack * dashAttackLate * lightFTilt * mediumFTiltHit1 *
mediumFTiltHit2* lightUTilt * mediumUTilt * mediumUTiltLate * lightDTilt *
mediumDTilt * fSmash * uSmash * uSmashLate * dSmash * standingGrab * dashGrab *
pivotGrab * fThrow * bThrow * uThrow * dThrow * spotDodge * forwardRoll *
backRoll * airDodge;

datatype ryuStats = RyuStats of characterName * weight * runSpeed * walkSpeed *
airSpeed * fallSpeed * fastFallSpeed * airAcceleration * gravity * sHAirTime *
maxJumps * wallJump * wallCling * crawl * tether * jumpsquat * softLandingLag * hardLandingLag * fHAirTime;

(*19 total things in stats*)
val ryuStat =
  RyuStats(Ryu,Weight(103),RunSpeed(0.6),WalkSpeed(0.75),AirSpeed(1.12),FallSpeed(1.6),FastFallSpeed(2.24),AirAcceleration(0.025),Gravity(0.12),SHAirTime(31),MaxJumps(2),WallJump(false),WallCling(false),Crawl(false),Tether(false),Jumpsquat(5),
  SoftLandingLag(2),HardLandingLag(4),FHAirTime(43));
datatype ryuTotal = RyuTotal of ryuStats * ryuAttacks;
val ryu = RyuTotal;
fun ryuWeight(RyuTotal(RyuStats(_,Weight(weight),_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),RyuAttacks(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)))
  = weight;
val weight = ryuWeight(RyuTotal);
