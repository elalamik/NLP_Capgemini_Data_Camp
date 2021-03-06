?	??=x-8@??=x-8@!??=x-8@	?q?m[???q?m[??!?q?m[??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??=x-8@yu??s6@1z?蹅???A????=^??I????Y??Y??ǘ????*	?A`??"T@2U
Iterator::Model::ParallelMapV2??N??D??!????2??@)??N??D??1????2??@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?F?????!i?{@n?9@)m???{???1$??:?4@:Preprocessing2F
Iterator::Model?l?M??!Z߼C?H@)??G????1E??Tc1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateaU??N???!????V/@)?7?{?5z?1d?7f?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?r?}??x?!?A?G=@)?r?}??x?1?A?G=@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip/??$???!?? C?aI@)?P??C?r?1??c?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?6???p?!:%J? @)?6???p?1:%J? @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?'eRC??!???H?3@)??3?ތj?16HR?u@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?q?m[??I?=?JGX@Q=қ???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	yu??s6@yu??s6@!yu??s6@      ??!       "	z?蹅???z?蹅???!z?蹅???*      ??!       2	????=^??????=^??!????=^??:	????Y??????Y??!????Y??B      ??!       J	??ǘ??????ǘ????!??ǘ????R      ??!       Z	??ǘ??????ǘ????!??ǘ????b      ??!       JGPUY?q?m[??b q?=?JGX@y=қ???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???$??!???$??"=
sequential_104/dense_312/MatMulMatMulNN??vE??!?,a?
;??0"=
 sequential_104/dense_314/SoftmaxSoftmax??D? 	??!?x?????"=
sequential_104/dense_313/MatMulMatMul????*???!?V^i-???0"=
sequential_104/dense_314/MatMulMatMul=b?F(??!?zDձ???0"K
-gradient_tape/sequential_104/dense_313/MatMulMatMul??:????!(??-/??0"K
/gradient_tape/sequential_104/dense_314/MatMul_1MatMul@??g???!???????"K
/gradient_tape/sequential_104/dense_313/MatMul_1MatMul?
(?g??!?V????"K
-gradient_tape/sequential_104/dense_312/MatMulMatMul~??v??!d?I??m??0"b
?sequential_104/dropout_104/dropout/random_uniform/RandomUniformRandomUniforme>?K???!J*e????Q      Y@Y[ZZZZZ6@ajiiiiiS@q???G??L@yOR???.??"?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 