	?St$?3@@?St$?3@@!?St$?3@@	oj??	??oj??	??!oj??	??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?St$?3@@???=@1?dh??A??aN?&??I?|[?T??Y??k?6??*??K7??V@)      =2U
Iterator::Model::ParallelMapV2	????Q??!????B@)	????Q??1????B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?x??ە?!q?D0??7@)!???0??1?S?1T?2@:Preprocessing2F
Iterator::Model$}ZE??!xSK?_mJ@)<l"3???1??(?Y?.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?J?E?}?!??A?? @)?J?E?}?1??A?? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateE?ɨ2???!x?xԷ-@)?UIddy?1'??Ad@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?r??٥?!?????G@)Ϡ???u?1e???>@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorv?ꭁ?r?!???;&@)v?ꭁ?r?1???;&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?????t??!?Y w??1@)f?ʉve?1Kd??q'@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9pj??	??I_F?GJXX@Q?Fw???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???=@???=@!???=@      ??!       "	?dh???dh??!?dh??*      ??!       2	??aN?&????aN?&??!??aN?&??:	?|[?T???|[?T??!?|[?T??B      ??!       J	??k?6????k?6??!??k?6??R      ??!       Z	??k?6????k?6??!??k?6??b      ??!       JGPUYpj??	??b q_F?GJXX@y?Fw???@