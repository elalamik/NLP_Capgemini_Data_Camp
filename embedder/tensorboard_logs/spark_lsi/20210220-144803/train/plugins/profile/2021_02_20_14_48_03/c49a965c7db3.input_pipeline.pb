	Ow?x??@Ow?x??@!Ow?x??@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Ow?x??@??`?>E<@1?lXSY??A6Vb?????I臭???@*	-????T@2U
Iterator::Model::ParallelMapV2??)x
??!Qs??/k=@)??)x
??1Qs??/k=@:Preprocessing2F
Iterator::Model0?GĔ??!˞?/??L@)ڐf??1D?qw?V<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ڥ????!?$n?O?4@)M?*?????1?(?9vo1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceF(???%v?!+???@)F(???%v?1+???@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>#?ƅ?!̾?^?)@)6l??gu?1l`Ay?%@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?sCSv???!5a?E@)˼Uס?r?1????C?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorQf?L2rf?!???.?^
@)Qf?L2rf?1???.?^
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?;FzQ??!??^l0@) a??*f?1?I?\
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI`??]t?X@Q꧅?????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??`?>E<@??`?>E<@!??`?>E<@      ??!       "	?lXSY???lXSY??!?lXSY??*      ??!       2	6Vb?????6Vb?????!6Vb?????:	臭???@臭???@!臭???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q`??]t?X@y꧅?????