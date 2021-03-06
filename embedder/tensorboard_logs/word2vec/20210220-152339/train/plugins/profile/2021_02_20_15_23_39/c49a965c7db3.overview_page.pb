?	?!9???B@?!9???B@!?!9???B@	1PĴR???1PĴR???!1PĴR???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?!9???B@??8?dmA@1?֍w???A???ګ??I??- ?^??Yh?RD?U??*	?(\??]V@2U
Iterator::Model::ParallelMapV2鷯???!?&?Xt??@)鷯???1?&?Xt??@:Preprocessing2F
Iterator::Model??6?^??!?,???K@)?P??֕?1`2S???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??=?4??!?d??2@)? ?w?~??1?:???/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateJ?%r???!p?g?.@)쉮?8?1v?F3 
!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??^zo??!v??vNF@)??i?{?1??x?qi@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????C?x?!???D@)????C?x?1???D@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????g?!?,?d?	@)?????g?1?,?d?	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Z???!??f?u:2@)?ΡU1e?1????"@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no91PĴR???I*c?>?\X@Q????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??8?dmA@??8?dmA@!??8?dmA@      ??!       "	?֍w????֍w???!?֍w???*      ??!       2	???ګ?????ګ??!???ګ??:	??- ?^????- ?^??!??- ?^??B      ??!       J	h?RD?U??h?RD?U??!h?RD?U??R      ??!       Z	h?RD?U??h?RD?U??!h?RD?U??b      ??!       JGPUY1PĴR???b q*c?>?\X@y????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits!6ᅣ???!!6ᅣ???"-
IteratorGetNext/_1_Send???!X\??!3\?????"=
sequential_167/dense_501/MatMulMatMul-?uQ?X??!Ξ??????0"=
 sequential_167/dense_503/SoftmaxSoftmaxv???????!???????"=
sequential_167/dense_502/MatMulMatMul{?????!?z??%??0"K
-gradient_tape/sequential_167/dense_501/MatMulMatMulj?H??!v?G??e??0"L
2sequential_167/batch_normalization_83/moments/meanMean????r??!u?9m??"K
/gradient_tape/sequential_167/dense_503/MatMul_1MatMulJYXi???!
%?O?n??"=
sequential_167/dense_503/MatMulMatMul??Ā??!?K?Fg??0"K
/gradient_tape/sequential_167/dense_502/MatMul_1MatMul5???:??!??|Y??Q      Y@Y??(??(.@a?뺮?:U@q???=??I@y???????"?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 