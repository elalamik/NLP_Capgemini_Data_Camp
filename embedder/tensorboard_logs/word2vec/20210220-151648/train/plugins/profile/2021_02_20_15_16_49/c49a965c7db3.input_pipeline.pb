	㪲>@㪲>@!㪲>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-㪲>@????<@1?7?06??A;8؛???I`"ĕ???*	??????S@2U
Iterator::Model::ParallelMapV25???#b??!*?ƃ,@@)5???#b??1*?ƃ,@@:Preprocessing2F
Iterator::Model?"i7????!ي????L@)}?K??ϔ?1}??5B?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatF??(&o??!??'Q?&4@)z?I|???1?o?O?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate`X?|[???!??؜?])@)t	4?t?1?:+??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL?????t?!P?v?,@)L?????t?1P?v?,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???J?.??!'u_[E@)??v?$$r?1???>@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Bˊ?!CW??l0@)??L0?kh?1L?W???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorF?Sweg?!?.??|?@)F?Sweg?1?.??|?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI? "IݕX@Q??w?????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????<@????<@!????<@      ??!       "	?7?06???7?06??!?7?06??*      ??!       2	;8؛???;8؛???!;8؛???:	`"ĕ???`"ĕ???!`"ĕ???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q? "IݕX@y??w?????