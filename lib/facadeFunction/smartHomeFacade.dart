import 'package:facade/networks/smartHomeApi.dart';
import 'package:facade/networks/netflixApi.dart';
import 'package:facade/networks/audioApi.dart';
import 'package:facade/networks/tvApi.dart';
import 'package:facade/facadeFunction/gamingFacade.dart';
import 'package:facade/stateWidget/smartHomeState.dart';

class SmartHomeFacade {
  final GamingFacade _gamingFacade = GamingFacade();
  final TvApi _tvApi = TvApi();
  final AudioApi _audioApi = AudioApi();
  final NetflixApi _netflixApi = NetflixApi();
  final SmartHomeApi _smartHomeApi = SmartHomeApi();

  void startMovie(SmartHomeState smartHomeState ,String movieTitle){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOff();
    smartHomeState.tvOn = _tvApi.turnOn();
    smartHomeState.audioSystemOn = _audioApi.turnSpeakersOn();
    smartHomeState.netflixConnected = _netflixApi.connect();
    _netflixApi.play(movieTitle);
  }
  void stopMovie(SmartHomeState smartHomeState){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOff();
    smartHomeState.tvOn = _tvApi.turnOff();
    smartHomeState.audioSystemOn = _audioApi.turnSpeakersOff();
    smartHomeState.netflixConnected = _netflixApi.disconnect();
  }
  void startGaming(SmartHomeState smartHomeState){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOff();
    smartHomeState.tvOn = _tvApi.turnOn();
    _gamingFacade.startGaming(smartHomeState);
  }
  void stopGaming(SmartHomeState smartHomeState){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOn();
    smartHomeState.tvOn = _tvApi.turnOff();
    _gamingFacade.stopGaming(smartHomeState);
  }
  void startStreaming(SmartHomeState smartHomeState){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOn();
    smartHomeState.tvOn = _tvApi.turnOn();
    _gamingFacade.startStreaming(smartHomeState);
  }
  void stopStreaming(SmartHomeState smartHomeState){
    smartHomeState.lightsOn = _smartHomeApi.turnLightsOn();
    smartHomeState.tvOn = _tvApi.turnOff();
    _gamingFacade.stopStreaming(smartHomeState);
  }
}