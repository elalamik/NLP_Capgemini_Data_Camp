	?5v???@@?5v???@@!?5v???@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?5v???@@N?@?C?<@1cAJ???A?5_%??I??9p@*	ʡE??EY@2U
Iterator::Model::ParallelMapV2)?k{???!_?E?X?D@))?k{???1_?E?X?D@:Preprocessing2F
Iterator::ModelްmQf???!?)1?^?O@)qqTn????1tF?i?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat>??j?#??!??4??1@)???V%???1ʹ?cӏ,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenatecC7????!K???&@)?i?{??w?1k??8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;?zj?u?!,5L?O6@);?zj?u?1,5L?O6@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?"ڎ????!g???B@)??֪]s?1aw?x ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor;??]?j?!?c???	@);??]?j?1?c???	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?'??????!'Т?q?+@)?????Nh?1o?z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 86.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIHx??S`X@Q??0Ă?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	N?@?C?<@N?@?C?<@!N?@?C?<@      ??!       "	cAJ???cAJ???!cAJ???*      ??!       2	?5_%???5_%??!?5_%??:	??9p@??9p@!??9p@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qHx??S`X@y??0Ă?@