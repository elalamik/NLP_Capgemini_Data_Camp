	öE?@@öE?@@!öE?@@	E1?Y??E1?Y??!E1?Y??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6öE?@@????.=@1??ؙB???A?m?????I????O? @Y_(`;???*	9??v?W@2U
Iterator::Model::ParallelMapV2??8h??!]=ph^A@)??8h??1]=ph^A@:Preprocessing2F
Iterator::Model?c??1??!?Α&?L@)???_???1)#C@R?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???s????!?w@cr?3@)?KK??1F???wj0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateX???<??!́??q?,@)w?h?hs|?1@?{#?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?,?s?z?![9i?N?@)?,?s?z?1[9i?N?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?Bt	??!1n??5E@)??4???r?1J??	??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??eOk?!?#
֗@)??eOk?1?#
֗@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???6????!T,?oz1@)?ܚt["g?1g??u?}@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9E1?Y??IӼ??OX@Q?B?)1U@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????.=@????.=@!????.=@      ??!       "	??ؙB?????ؙB???!??ؙB???*      ??!       2	?m??????m?????!?m?????:	????O? @????O? @!????O? @B      ??!       J	_(`;???_(`;???!_(`;???R      ??!       Z	_(`;???_(`;???!_(`;???b      ??!       JGPUYE1?Y??b qӼ??OX@y?B?)1U@