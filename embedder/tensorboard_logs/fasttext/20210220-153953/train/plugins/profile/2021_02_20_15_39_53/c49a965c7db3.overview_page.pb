?	3k) ?k8@3k) ?k8@!3k) ?k8@	???՗?????՗??!???՗??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails63k) ?k8@?tZ?A?6@1-|}?K??A?[;Q??I??5|???Y?? ?> ??*	?Q???R@2U
Iterator::Model::ParallelMapV2?h???2??!R?
Y??@)?h???2??1R?
Y??@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??Q????!?R?;??8@)??el?f??1?di??14@:Preprocessing2F
Iterator::Model:??l??!?A+5H@)!W?Yʋ?1??x???1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatebg
?׈?!v`?R?/@)%xC8y?1????7 @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?K??$wx?!΍B:@w@)?K??$wx?1΍B:@w@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?EИIԣ?!?I??ʀI@)£?#??s?1?Ђ??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????Kk?!
?S??@)?????Kk?1
?S??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???l?%??!+??'?4@)????!9i?1?s?6_8@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???՗??I??0?bX@Q"?{I?n @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?tZ?A?6@?tZ?A?6@!?tZ?A?6@      ??!       "	-|}?K??-|}?K??!-|}?K??*      ??!       2	?[;Q???[;Q??!?[;Q??:	??5|?????5|???!??5|???B      ??!       J	?? ?> ???? ?> ??!?? ?> ??R      ??!       Z	?? ?> ???? ?> ??!?? ?> ??b      ??!       JGPUY???՗??b q??0?bX@y"?{I?n @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits6???4??!6???4??"=
 sequential_217/dense_653/SoftmaxSoftmax
?<?qf??!<YE?????"=
sequential_217/dense_651/MatMulMatMul??9???!??h?z`??0"K
-gradient_tape/sequential_217/dense_651/MatMulMatMul?T?G @??!B???|???0"K
/gradient_tape/sequential_217/dense_652/MatMul_1MatMul???6?!??0??"K
/gradient_tape/sequential_217/dense_653/MatMul_1MatMul(?q1=??!?,!s???"=
sequential_217/dense_652/MatMulMatMul??8?????!???????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam3"??¾??!?-o?
??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?T??Ւ?!+?`?78??"K
-gradient_tape/sequential_217/dense_652/MatMulMatMula? ?????!q???AB??0Q      Y@Y[ZZZZZ6@ajiiiiiS@qF	??O3@y??$8?6??"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?19.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 