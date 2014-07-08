-record(recvr_state, {lastRecvd :: orddict:orddict(), %TODO: this may not be required
                      lastCommitted :: orddict:orddict(), %Track timestamps for messages from other DC which have been committed by this DC
                      recQ :: orddict:orddict(), %Holds recieving updates from each DC separately in causal order. 
                      %TODO, use a persistent queue for fault tolerance
                      dcs,
                      statestore}).

-define(OTHER_DC, ['floppy1@127.0.0.1', 'floppy2@127.0.0.1', 'floppy3@127.0.0.1']).
