	>x?҆'8@>x?҆'8@!>x?҆'8@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails->x?҆'8@P????G6@1?tۈ???AN_??,???I??`?{??*	q=
ף?T@2U
Iterator::Model::ParallelMapV2?,??????!?-l?>@)?,??????1?-l?>@:Preprocessing2F
Iterator::Modelq???
??!??s??L@)
.V?`??1` Z?n=:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat`??D???!?a?R?3@)ҏ?S????1??s??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice^c???x?!?+1J؝@)^c???x?1?+1J؝@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??????!`?J?vE@)S@?? ku?1J?P?;m@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?T?=ϟ??!-l??*@)?F?ҿ$u?1|?(??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??M~?Nf?!??C?\{
@)??M~?Nf?1??C?\{
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Dׅ??!WTed??0@)??f??e?18bvr?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIs?4??mX@Q??o9?E@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	P????G6@P????G6@!P????G6@      ??!       "	?tۈ????tۈ???!?tۈ???*      ??!       2	N_??,???N_??,???!N_??,???:	??`?{????`?{??!??`?{??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qs?4??mX@y??o9?E@