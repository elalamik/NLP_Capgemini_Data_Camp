	?vi?aM9@?vi?aM9@!?vi?aM9@	-?^???-?^???!-?^???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?vi?aM9@_?(?QS7@1G?g?u??AC8fٓ???I??;???Y?;?%8??*	V-?M\@2F
Iterator::Modelr??????!????&`K@)4??<???1э_?̧<@:Preprocessing2U
Iterator::Model::ParallelMapV2|,G?@??!M???:@)|,G?@??1M???:@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?~??@???!???=5@)?K?K?1??1??|?jc/@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???2???!ȩfM;Y1@)
?\????1???BoZ-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??x[??y?!=?e?n-@)??x[??y?1=?e?n-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?jGq?:??!q?L\ٟF@)*T7?s?1?|{? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??@???h?!TN?``@)??@???h?1TN?``@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?h?wa??!?um<?7@)<P?<?f?1?j?
Y	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9-?^???I?kD?VOX@Q???'ȴ??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	_?(?QS7@_?(?QS7@!_?(?QS7@      ??!       "	G?g?u??G?g?u??!G?g?u??*      ??!       2	C8fٓ???C8fٓ???!C8fٓ???:	??;?????;???!??;???B      ??!       J	?;?%8???;?%8??!?;?%8??R      ??!       Z	?;?%8???;?%8??!?;?%8??b      ??!       JGPUY-?^???b q?kD?VOX@y???'ȴ??