	%?/???@%?/???@!%?/???@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-%?/???@?Mc{-?<@1#??~j<??A?K??$w??I?-s?,&@*	????s\@2U
Iterator::Model::ParallelMapV2*??Dؠ?!l??-F?<@)*??Dؠ?1l??-F?<@:Preprocessing2F
Iterator::Modelro~?D???!]^h? wH@)?????U??1M???4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?B?O?}??!6y????6@)F?xxҒ?1y??>{&0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat=I?f?͖?!ɹ?I>?3@)A?
????1?q????.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??F!ɬ~?!????R@)??F!ɬ~?1????R@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?rJ@L­?!???߈I@)?Z?!?{?1\6???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?C?r?cs?!b??Q?@)?C?r?cs?1b??Q?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????˝?!??'??9@)???M?qj?1}<"??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI????aX@QK??.??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Mc{-?<@?Mc{-?<@!?Mc{-?<@      ??!       "	#??~j<??#??~j<??!#??~j<??*      ??!       2	?K??$w???K??$w??!?K??$w??:	?-s?,&@?-s?,&@!?-s?,&@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q????aX@yK??.??@