	"?T3k?7@"?T3k?7@!"?T3k?7@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-"?T3k?7@P?R?5@1?R??c???A??e????I??a?????*	??v???W@2U
Iterator::Model::ParallelMapV2??k?)??!????@@)??k?)??1????@@:Preprocessing2F
Iterator::Modelst??%??!????M@)B?Ēr???1CX????:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatz?3M?~??!"R?oY?2@)x??qo??1v?rщ/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice̛õ??~?!'?/n?g@)̛õ??~?1'?/n?g@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????Li??!?????.@)???߾|?12& 1-?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipɒ9?wգ?!??{?D@)^gE?Do?1h ??\?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Y??8j?!6'8??
@)?Y??8j?16'8??
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap̳?V|C??!???m?1@)??ŉ?vd?1|rY??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????jX@Qv??i ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	P?R?5@P?R?5@!P?R?5@      ??!       "	?R??c????R??c???!?R??c???*      ??!       2	??e??????e????!??e????:	??a???????a?????!??a?????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????jX@yv??i ?@