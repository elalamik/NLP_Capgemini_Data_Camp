	D??]??@D??]??@!D??]??@	??h?!????h?!??!??h?!??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6D??]??@??%=@1???:,??A :̗`??IH?}8???Ya?$?Ӻ?*	Zd;?w]@2U
Iterator::Model::ParallelMapV2V?j-?B??!n ?ו6@)V?j-?B??1n ?ו6@:Preprocessing2F
Iterator::Model?Z(????!???2&F@)??J#f???1 ?p?t?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?e??S9??!p?R?.68@)/?HM???1?5??f}4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenaten3??x??!??"55@)?5?e?s??1??Hȕ:)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?0_^?}??!??o?? @)?0_^?}??1??o?? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??3?ް?!usG???K@)?&?????1sa>?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^?pX?q?!x_?E@?@)^?pX?q?1x_?E@?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapw?
?????!?d?6??8@)#0?70?q?1L??? ^@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??h?!??I??	??RX@Qq????
@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??%=@??%=@!??%=@      ??!       "	???:,?????:,??!???:,??*      ??!       2	 :̗`?? :̗`??! :̗`??:	H?}8???H?}8???!H?}8???B      ??!       J	a?$?Ӻ?a?$?Ӻ?!a?$?Ӻ?R      ??!       Z	a?$?Ӻ?a?$?Ӻ?!a?$?Ӻ?b      ??!       JGPUY??h?!??b q??	??RX@yq????
@