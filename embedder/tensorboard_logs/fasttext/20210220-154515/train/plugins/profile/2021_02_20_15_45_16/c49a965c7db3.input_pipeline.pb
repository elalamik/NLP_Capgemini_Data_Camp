	t_?lG:@t_?lG:@!t_?lG:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-t_?lG:@?Z?QZ8@1??il???A?C?bԵ??I???oa??*	??K7??W@2F
Iterator::Model?? ??ԭ?!?ҿ???N@)??????1?g>?>@:Preprocessing2U
Iterator::Model::ParallelMapV2??X32ȝ?!1>}???>@)??X32ȝ?11>}???>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatē???G??!????x?3@)`???Y??1o>s?k[/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?F?ҿ$??!???%@)JΉ=??u?1Y??h?F@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??Hh˹t?!?+o??i@)??Hh˹t?1?+o??i@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipZ_&????!-@d.C@)?a?[>?r?1:k??/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorR<??kp?!E??y
?@)R<??kp?1E??y
?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?d??7i??!??CI+@)?yT??e?1M?1???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIGE???vX@Q#W??"%@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Z?QZ8@?Z?QZ8@!?Z?QZ8@      ??!       "	??il?????il???!??il???*      ??!       2	?C?bԵ???C?bԵ??!?C?bԵ??:	???oa?????oa??!???oa??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qGE???vX@y#W??"%@