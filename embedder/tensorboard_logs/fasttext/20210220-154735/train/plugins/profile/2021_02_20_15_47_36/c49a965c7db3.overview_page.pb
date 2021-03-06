?	>"?D?<@>"?D?<@!>"?D?<@	?v??C????v??C???!?v??C???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6>"?D?<@?f???:@1?y??Q??A?8?Z????I;s	?;??YX;?s?ѵ?*	)\???8U@2U
Iterator::Model::ParallelMapV2??Bt??!'WƷ?<@)??Bt??1'WƷ?<@:Preprocessing2F
Iterator::Model???G????!??eJK@)E?J???1??s?r99@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatZJ??P???!??k???5@)?Dh׏?1{??uP2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateۉ??Hۈ?!?i;?,@)S?1?#y?1[:	??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicecb?qm?x?!????]@)cb?qm?x?1????]@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?H?s
???!~????F@)j?????u?1#m?3@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?@?vh?!˺}?#@)?@?vh?1˺}?#@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????ߎ?!??mV?1@)	?L?nh?1?T?E?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?v??C???IQ-?3?{X@Q?͐)?X??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?f???:@?f???:@!?f???:@      ??!       "	?y??Q???y??Q??!?y??Q??*      ??!       2	?8?Z?????8?Z????!?8?Z????:	;s	?;??;s	?;??!;s	?;??B      ??!       J	X;?s?ѵ?X;?s?ѵ?!X;?s?ѵ?R      ??!       Z	X;?s?ѵ?X;?s?ѵ?!X;?s?ѵ?b      ??!       JGPUY?v??C???b qQ-?3?{X@y?͐)?X???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?D9?????!?D9?????"=
sequential_242/dense_726/MatMulMatMulMl??????!?J????0"=
 sequential_242/dense_728/SoftmaxSoftmaxM?X	?͟?!????·??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamF??b???!R-m?C??"K
/gradient_tape/sequential_242/dense_727/MatMul_1MatMul????S??!p?WU????"K
-gradient_tape/sequential_242/dense_726/MatMulMatMul??J????!?v??$??0"K
/gradient_tape/sequential_242/dense_728/MatMul_1MatMul`y@????!G~???u??"=
sequential_242/dense_727/MatMulMatMul?.'???!Xi?????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdambbb?7???!~???;???"K
-gradient_tape/sequential_242/dense_728/MatMulMatMulH?
??b??!B;??c???0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?? ??N@yltuFw??"?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?61.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 