	x^*6?@@x^*6?@@!x^*6?@@	?????$???????$??!?????$??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6x^*6?@@?ƻ#c?=@1I?0e`??A?r????I?Lۿ?R??Y??bFx{??*	+??]@2U
Iterator::Model::ParallelMapV2???e??!A?@?;@)???e??1A?@?;@:Preprocessing2F
Iterator::Model??o?????!??~问F@)?Q??/I??1?$I?$i1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatd??3?Ę?!R??dbB4@)??̓k
??1\v?hd0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????
??!?GI\??8@)ޒ??ɓ?1[?Kar/0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicedT8???!?x??e? @)dT8???1?x??e? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?t??????!h?hQK@)E?u????1Dn???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??F?r?!?????@)??F?r?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap`???8??!JG???;@)c'??>p?1????
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?????$??IMD?PBX@Q??w?,@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ƻ#c?=@?ƻ#c?=@!?ƻ#c?=@      ??!       "	I?0e`??I?0e`??!I?0e`??*      ??!       2	?r?????r????!?r????:	?Lۿ?R???Lۿ?R??!?Lۿ?R??B      ??!       J	??bFx{????bFx{??!??bFx{??R      ??!       Z	??bFx{????bFx{??!??bFx{??b      ??!       JGPUY?????$??b qMD?PBX@y??w?,@