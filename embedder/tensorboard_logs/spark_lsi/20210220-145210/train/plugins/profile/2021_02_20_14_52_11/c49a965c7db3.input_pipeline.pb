	?fI?B@?fI?B@!?fI?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?fI?B@j1x?XA@1}??]??A???׬?I|&??i? @*	?E????T@2U
Iterator::Model::ParallelMapV2?9@0G???!~J(?~?B@)?9@0G???1~J(?~?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat\?3??O??!???;??6@)???????1??????2@:Preprocessing2F
Iterator::Model???(???!??S
z?J@)T?????1 ?Vn?a0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL??pvky?!??pZ@)L??pvky?1??pZ@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate!???ƈ?!???4_X-@)????5"x?1Gb??c?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??Q????!rf???G@)}?:s?1`V??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor9??v??j?!?B?Gz?@)9??v??j?1?B?Gz?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapΨ?*?؍?!X(??1@)???`?Hd?1#x?m?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI$o?]~X@Qq?<H4 @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	j1x?XA@j1x?XA@!j1x?XA@      ??!       "	}??]??}??]??!}??]??*      ??!       2	???׬????׬?!???׬?:	|&??i? @|&??i? @!|&??i? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q$o?]~X@yq?<H4 @