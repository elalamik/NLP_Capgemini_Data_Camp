	?qS?/7@?qS?/7@!?qS?/7@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?qS?/7@??fF?N5@1?\??X3??Aen?ݳ??I?-?l?I??*	?l???op@2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?/L?
??!~L???M@){?/L?
??1~L???M@:Preprocessing2U
Iterator::Model::ParallelMapV2?-$`t??!??t???"@)?-$`t??1??t???"@:Preprocessing2F
Iterator::Model`??'??!???m:?2@)?x[??٘?1??@C?t"@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat7?DeÚ??!j?a???P@)?ի?耔?1?"Ta?t@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?c???_??!E?dqTT@)?H?H???1?Tɴ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?	??a??!0{?i]!@)???zO???1?????	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??s?f|?!결?@)??s?f|?1결?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?|???݉?!?\??5@)X?|[?Tw?1	??S@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??чBtX@QT???w@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??fF?N5@??fF?N5@!??fF?N5@      ??!       "	?\??X3???\??X3??!?\??X3??*      ??!       2	en?ݳ??en?ݳ??!en?ݳ??:	?-?l?I???-?l?I??!?-?l?I??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??чBtX@yT???w@