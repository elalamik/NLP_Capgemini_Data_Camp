	??l?Ā9@??l?Ā9@!??l?Ā9@	t{X/0??t{X/0??!t{X/0??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??l?Ā9@?j??	7@1}=_?\6??A6\䞮???I?6?^?7??YE?[??b??*J7?A`	j@)       =2F
Iterator::Model@j'?;??!Zp"o(?R@)C?i?q???1n;6?L@:Preprocessing2U
Iterator::Model::ParallelMapV2{Nz??ڣ?!.??5?2@){Nz??ڣ?1.??5?2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???-=???!ub????(@)p?܁:??1i}M??#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?-?????!? L?@)?-?????1? L?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?pA?,??!;??];@)?1??l~?1n?k`o?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipW??????!?>vC^8@)?}ƅ!y?1?a?C?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor]?E?~u?!+?W.?'@)]?E?~u?1+?W.?'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?x\T????!Y?X?`!@)Ց#???g?1?x????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9t{X/0??I?` -X@Qe???g?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?j??	7@?j??	7@!?j??	7@      ??!       "	}=_?\6??}=_?\6??!}=_?\6??*      ??!       2	6\䞮???6\䞮???!6\䞮???:	?6?^?7???6?^?7??!?6?^?7??B      ??!       J	E?[??b??E?[??b??!E?[??b??R      ??!       Z	E?[??b??E?[??b??!E?[??b??b      ??!       JGPUYt{X/0??b q?` -X@ye???g?@