	??????@??????@!??????@	?S*H?@?S*H?@!?S*H?@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??????@?ْU.??1?(??0??A???а??IB!?J??Y??Q????*	W-???`@2U
Iterator::Model::ParallelMapV2m˟o??!?Yn3?<@)m˟o??1?Yn3?<@:Preprocessing2F
Iterator::ModelMu?Բ?!???4??K@).?s`9??1~!????:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?U??6o??!??"^?4@)?z6?>??1?峑?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??
*?~??!?rq??/@)?<?|?Ê?1OB??#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??Y?h9??!a?!b?@)??Y?h9??1a?!b?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?U??;M??!JB^?KF@)???[1??1pS?K
?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??.?t?!e???\?@)??.?t?1e???\?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???H???!
R+???1@)ѭ????d?1׉)/?Y??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 45.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?36.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?S*H?@IQ??q??T@Q???[0Y)@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ْU.???ْU.??!?ْU.??      ??!       "	?(??0???(??0??!?(??0??*      ??!       2	???а?????а??!???а??:	B!?J??B!?J??!B!?J??B      ??!       J	??Q??????Q????!??Q????R      ??!       Z	??Q??????Q????!??Q????b      ??!       JGPUY?S*H?@b qQ??q??T@y???[0Y)@