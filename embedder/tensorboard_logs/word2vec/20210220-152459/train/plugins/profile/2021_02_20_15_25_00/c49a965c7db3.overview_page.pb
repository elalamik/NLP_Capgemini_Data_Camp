?	?)V?*A@?)V?*A@!?)V?*A@	w:???5??w:???5??!w:???5??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?)V?*A@!???x?@1?8????As?]?????Ie?/??f@Y?T?=ϟ??*	+??Ϋa@2F
Iterator::Modele?VAt??!??#E??M@)?r??ǩ?1x??26?A@:Preprocessing2U
Iterator::Model::ParallelMapV2?;? ??!i>%??7@)?;? ??1i>%??7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatt)?*????!?e M1@)??N^??1?????#,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate? |??!?W????0@) |(??1?????'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????N}?!?R?-?>@)????N}?1?R?-?>@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?\??ky??!SܺL\D@)????:8x?1N?j?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?6qr?Cq?!Y0T?;?@)?6qr?Cq?1Y0T?;?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapsg&?5??!?ܣ?|3@)?+?`p?m?1?3E?V?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9v:???5??I?? r5?X@Q????9e??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	!???x?@!???x?@!!???x?@      ??!       "	?8?????8????!?8????*      ??!       2	s?]?????s?]?????!s?]?????:	e?/??f@e?/??f@!e?/??f@B      ??!       J	?T?=ϟ???T?=ϟ??!?T?=ϟ??R      ??!       Z	?T?=ϟ???T?=ϟ??!?T?=ϟ??b      ??!       JGPUYv:???5??b q?? r5?X@y????9e???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???q[??!???q[??"=
sequential_170/dense_510/MatMulMatMul??`??ޢ?!t?-?????0"=
 sequential_170/dense_512/SoftmaxSoftmax?p'??Þ?!?t@a:???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?
???!f?!?b??"K
-gradient_tape/sequential_170/dense_510/MatMulMatMul??@N?`??!Bn?&????0"K
/gradient_tape/sequential_170/dense_511/MatMul_1MatMulb?A??P??!?p????"K
/gradient_tape/sequential_170/dense_512/MatMul_1MatMulU!?{P??!\+??b??"=
sequential_170/dense_511/MatMulMatMul???H?w??!???<???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?w#ͰV??!??????"b
?sequential_170/dropout_170/dropout/random_uniform/RandomUniformRandomUniform?a?ү??!u
?H????Q      Y@Y[ZZZZZ6@ajiiiiiS@q?G,Oj?F@y?<?????"?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?46.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 