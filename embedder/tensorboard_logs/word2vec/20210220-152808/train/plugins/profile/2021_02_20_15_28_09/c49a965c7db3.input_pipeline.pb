	=?ЕbD@=?ЕbD@!=?ЕbD@	????L??????L??!????L??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6=?ЕbD@(???B@1?_??D??A?D?4??Ib?Q+L? @Y?\S ????*d;?O?gX@)      =2U
Iterator::Model::ParallelMapV2uF^?Ģ?!?t?V??B@)uF^?Ģ?1?t?V??B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?AA)Z???!YK`??7@)G?P?[??1F???\3@:Preprocessing2F
Iterator::Model?dT8??!?X?S?:J@)j1x??͍?1ˎ????-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?B;?Y?}?! DoR?@)?B;?Y?}?1 DoR?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatet??gy??!?s?zK!,@)?Z(??z?1?j?D?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?f???§?!c?f?
?G@)}w+Kt?y?1`ڕ]?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?z??9yq?!?\?z@)?z??9yq?1?\?z@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapޭ,?Yf??!ՌU?h1@)?9???j?1h?N??
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9ޙ??L??I>63}?~X@QX?s?܉??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	(???B@(???B@!(???B@      ??!       "	?_??D???_??D??!?_??D??*      ??!       2	?D?4???D?4??!?D?4??:	b?Q+L? @b?Q+L? @!b?Q+L? @B      ??!       J	?\S ?????\S ????!?\S ????R      ??!       Z	?\S ?????\S ????!?\S ????b      ??!       JGPUYޙ??L??b q>63}?~X@yX?s?܉??