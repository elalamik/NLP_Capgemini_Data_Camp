	j2?m?7@j2?m?7@!j2?m?7@	rV?????rV?????!rV?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6j2?m?7@?dT?95@1>?h????AA??_???I?/h!#??Y=a??M??*?x?&1?V@)      =2U
Iterator::Model::ParallelMapV2<??kЗ??!??TV?M@@)<??kЗ??1??TV?M@@:Preprocessing2F
Iterator::Model;pΈ?ި?!xE?ݲ?J@):"ߥ?%??1˷?Sh4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?KqU?w??!?+jl?6@)?dT8??1
??R2k3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??>s֧??!???Iw?.@)?L??}?1D=?q?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??w??x{?!^??}G@)??w??x{?1^??}G@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?G??
??!??W"M~G@)??f?|u?1???^??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorm?i?*?i?!X$$?б@)m?i?*?i?1X$$?б@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapy?|???!??a2@)?+e?Xg?1Ɨ???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9rV?????IlO4c\)X@Q֎଒k@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?dT?95@?dT?95@!?dT?95@      ??!       "	>?h????>?h????!>?h????*      ??!       2	A??_???A??_???!A??_???:	?/h!#???/h!#??!?/h!#??B      ??!       J	=a??M??=a??M??!=a??M??R      ??!       Z	=a??M??=a??M??!=a??M??b      ??!       JGPUYrV?????b qlO4c\)X@y֎଒k@