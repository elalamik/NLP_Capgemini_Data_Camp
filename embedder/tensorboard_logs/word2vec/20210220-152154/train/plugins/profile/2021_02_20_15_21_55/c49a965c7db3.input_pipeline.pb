	?E?n?7C@?E?n?7C@!?E?n?7C@	03?????03?????!03?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?E?n?7C@4??@??A@1??1????A?dT??Ierjg????Y?zi? '??*	NbX9d^@2U
Iterator::Model::ParallelMapV2B??v?$??!??E??F@)B??v?$??1??E??F@:Preprocessing2F
Iterator::Model*X?l:??!O?J7?P@)#?Ƥ???1Q3R?3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??`?>??!???0@)H4?"??1J?0?s+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?(^emS??!l#:,5?&@){?"0?7??1?S?&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???:q9??!c?j?o?A@)-@?j?y?1?!nU|?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice_?vj.7x?!(??1?s@)_?vj.7x?1(??1?s@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?z????!?L5??,@)b?[>??n?1???K;?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+e?Xg?!?wϬW?@)?+e?Xg?1?wϬW?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no903?????I??&??)X@QX]t? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	4??@??A@4??@??A@!4??@??A@      ??!       "	??1??????1????!??1????*      ??!       2	?dT???dT??!?dT??:	erjg????erjg????!erjg????B      ??!       J	?zi? '???zi? '??!?zi? '??R      ??!       Z	?zi? '???zi? '??!?zi? '??b      ??!       JGPUY03?????b q??&??)X@yX]t? @