	????%V>@????%V>@!????%V>@	?֣AS????֣AS???!?֣AS???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????%V>@bi?G58<@1M??Ӏ???Ap??1=a??I˂??????Ya8?0C???*	?Q???V@2U
Iterator::Model::ParallelMapV2c%?YI+??!?&C"@@)c%?YI+??1?&C"@@:Preprocessing2F
Iterator::Modelط???/??!?l?dEL@)MJA??4??15?n|?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??-$`??!MG????5@)
?\????1 ??22@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceTpxADjz?!4]ǧ@@)TpxADjz?14]ǧ@@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??AA)Z??!???=?+@)cAJx?1ʺ$???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipuXᖏ??!^?0???E@)?j???t?1????q@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??KU??j?!fJ14??@)??KU??j?1fJ14??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?9d?w??!?>???0@)?@?vh?1xk?=?)
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?֣AS???I??MvOrX@Q?h&??C??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	bi?G58<@bi?G58<@!bi?G58<@      ??!       "	M??Ӏ???M??Ӏ???!M??Ӏ???*      ??!       2	p??1=a??p??1=a??!p??1=a??:	˂??????˂??????!˂??????B      ??!       J	a8?0C???a8?0C???!a8?0C???R      ??!       Z	a8?0C???a8?0C???!a8?0C???b      ??!       JGPUY?֣AS???b q??MvOrX@y?h&??C??