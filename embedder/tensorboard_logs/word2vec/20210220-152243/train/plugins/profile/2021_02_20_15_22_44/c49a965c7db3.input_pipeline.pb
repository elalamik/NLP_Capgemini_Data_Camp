	???_??B@???_??B@!???_??B@	<xg???<xg???!<xg???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???_??B@?A
?B?A@1??|?5^??Ap>u?Rz??I?f+/???Yd:tzލ??*	?|?5^?X@2U
Iterator::Model::ParallelMapV2OGɫs??!i)D3<@)OGɫs??1i)D3<@:Preprocessing2F
Iterator::Model6??ĩ?!??7 ?pI@)T?:???1??E???6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?5??Ң??!?!.A?>@))??q̏?1g??y?d/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????y??!ȜY??-@)????y??1ȜY??-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?SV??Dw?!?P9U?@)?SV??Dw?1?P9U?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???[???!Ń3fڡ&@)-??;??v?1??V?_J@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?{H??ߨ?!X???H@)r???	s?1?&????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapJ??????!?c:?W,@)?ܚt["g?1%?P+?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9<xg???Ie?ڦ?{X@Q??䌄??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?A
?B?A@?A
?B?A@!?A
?B?A@      ??!       "	??|?5^????|?5^??!??|?5^??*      ??!       2	p>u?Rz??p>u?Rz??!p>u?Rz??:	?f+/????f+/???!?f+/???B      ??!       J	d:tzލ??d:tzލ??!d:tzލ??R      ??!       Z	d:tzލ??d:tzލ??!d:tzލ??b      ??!       JGPUY<xg???b qe?ڦ?{X@y??䌄??