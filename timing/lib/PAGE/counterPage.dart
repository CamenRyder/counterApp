import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeing/blocs/counter/counterBloc.dart';
import 'package:timeing/blocs/counter/counterEvent.dart';
import 'package:timeing/blocs/counter/counterState.dart';

import '../BackGround/backgroundLogin.dart';
import '../blocs/counter/ticker.dart';

class ShowTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final duration = context.select((CounterBloc bloc) => bloc.state.duration);
    final seconds = ((duration % 60)).floor().toString().padLeft(2, '0');
    final minutes = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    // TODO: implement build
    return Text(
      '$minutes:$seconds',
      style: TextStyle(
          fontSize: 68,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 151, 112, 48)),
    );
  }
}

class CounterPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (context) => CounterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterBloc(tick: Tick()),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 75, 12, 7),
              title: const Text(
                'countdown ?',
                style: TextStyle(
                    color: Color.fromARGB(255, 151, 112, 48),
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            body: Stack(
              children: <Widget>[
                BG_counter(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShowTime(),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: BlocBuilder<CounterBloc, CounterState>(
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                if (state is TimeStartProgress) ...[
                                  ElevatedButton(
                                      onPressed: () {
                                        context.read<CounterBloc>().add(
                                            TimeStartEvent(
                                                duration: state.duration));
                                      },
                                      child:  Icon(
                                        Icons.play_arrow,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                ],
                                if (state is TimeInProgress) ...[
                                  ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterBloc>()
                                            .add(TimePauseEvent());
                                      },
                                      child: Icon(
                                        Icons.pause,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                  ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterBloc>()
                                            .add(TimeResetEvent());
                                      },
                                      child: Icon(
                                        Icons.replay,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                ],
                                if (state is TimeCompleteProgress) ...[
                                  ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterBloc>()
                                            .add(TimeResetEvent());
                                      },
                                      child: Icon(
                                        Icons.restore_page,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                ],
                                if (state is TimePauseProgress) ...[
                                  ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterBloc>()
                                            .add(TimeResumeEvent());
                                      },
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                  ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterBloc>()
                                            .add(TimeResetEvent());
                                      },
                                      child: Icon(
                                        Icons.replay,
                                        size: 44,
                                        color: Color.fromARGB(255, 174, 147, 8),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(10),
                                        backgroundColor: const Color.fromARGB(
                                            255, 85, 16, 16),
                                      )),
                                ],
                              ],
                            );
                          },
                        ))
                  ],
                ),
              ],
            )));
  }
}
/**
 *
 */
