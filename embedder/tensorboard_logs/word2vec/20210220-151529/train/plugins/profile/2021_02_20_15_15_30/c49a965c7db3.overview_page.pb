?	?O?I??@@?O?I??@@!?O?I??@@	??NK	5????NK	5??!??NK	5??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?O?I??@@????u>@1n?r????A2????s??I~T?~O? @Yd????t??*	V-?l@2U
Iterator::Model::ParallelMapV2y?@e????!??"|?L@)y?@e????1??"|?L@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate<Nё\???!???[?7@)$?@???1E}&?[?4@:Preprocessing2F
Iterator::ModelH4?"??!????"P@)jܛ?0ѐ?1S?V?K^@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat<?b??*??!mE?* @)u???1_??e?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Q??Z?{?!??`H@)?Q??Z?{?1??`H@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip$EdX???!?<j??A@)yxρ?y?1v??o|@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ui??m?!??I????)?ui??m?1??I????:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap/?$???!g@ϣ{?8@)??0?*h?1?L???a??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??NK	5??I?????LX@QgQ????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????u>@????u>@!????u>@      ??!       "	n?r????n?r????!n?r????*      ??!       2	2????s??2????s??!2????s??:	~T?~O? @~T?~O? @!~T?~O? @B      ??!       J	d????t??d????t??!d????t??R      ??!       Z	d????t??d????t??!d????t??b      ??!       JGPUY??NK	5??b q?????LX@ygQ????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsz?e????!z?e????"-
IteratorGetNext/_1_Send?cs?*???!`?B?????"=
sequential_143/dense_429/MatMulMatMulտ9? ???!U?P????0"=
 sequential_143/dense_431/SoftmaxSoftmax??eX????!o?]?????"K
-gradient_tape/sequential_143/dense_429/MatMulMatMul?[?|`B??!?P?_?Y??0"=
sequential_143/dense_430/MatMulMatMul?{?????!?8+?????0"K
/gradient_tape/sequential_143/dense_431/MatMul_1MatMul?tw6??!?? ???"K
-gradient_tape/sequential_143/dense_430/MatMulMatMul?Mi¨??!??Þ????0"K
/gradient_tape/sequential_143/dense_430/MatMul_1MatMul?Mn????!Q??O/???"=
sequential_143/dense_431/MatMulMatMul1??Hy??!?$?I????0Q      Y@Y??(??(.@a?뺮?:U@q9?'_??4@y??BX????"?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?20.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 