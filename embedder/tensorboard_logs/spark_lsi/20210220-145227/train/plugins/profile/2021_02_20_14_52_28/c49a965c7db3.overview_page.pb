?	??a?'JB@??a?'JB@!??a?'JB@	?vӎ???vӎ??!?vӎ??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??a?'JB@(?N>=?@@1??d???A?J[\?3??I?~K?|@Y?2?}ƅ??*	??C?l?]@2U
Iterator::Model::ParallelMapV2???5????![()Q??>@)???5????1[()Q??>@:Preprocessing2F
Iterator::Model+P??ô??!?٘B??I@)[??	m??1?4??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??N?o??!?r???_6@)6Z?Pۖ?15???2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???1????!h? ??K#@)???1????1h? ??K#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?j??? ??!???{P0@)VIddY??1?+??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip'?o|홭?!J&g?E$H@)?~???{?1??~???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??mRј?!o???=4@)??"[As?1??[?dh@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?}"Or?!?mM?@)?}"Or?1?mM?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?vӎ??Id????iX@Q?н??? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	(?N>=?@@(?N>=?@@!(?N>=?@@      ??!       "	??d?????d???!??d???*      ??!       2	?J[\?3???J[\?3??!?J[\?3??:	?~K?|@?~K?|@!?~K?|@B      ??!       J	?2?}ƅ???2?}ƅ??!?2?}ƅ??R      ??!       Z	?2?}ƅ???2?}ƅ??!?2?}ƅ??b      ??!       JGPUY?vӎ??b qd????iX@y?н??? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?B??4??!?B??4??"<
sequential_62/dense_186/MatMulMatMulG?š?!?$7n???0"<
sequential_62/dense_188/SoftmaxSoftmaxK+Y?M???! J?+|\??"<
sequential_62/dense_187/MatMulMatMul??J?0??!?˟~??0"-
IteratorGetNext/_1_Sendgi??_o??!I?ȕjp??"J
,gradient_tape/sequential_62/dense_187/MatMulMatMul?B?=?Ԑ?!R??????0"J
.gradient_tape/sequential_62/dense_188/MatMul_1MatMulF?Ǉ8r??!>????"<
sequential_62/dense_188/MatMulMatMulSm?Ig??!?Z????0"J
,gradient_tape/sequential_62/dense_186/MatMulMatMul_>?{Y\??!???????0"J
.gradient_tape/sequential_62/dense_187/MatMul_1MatMul??$?;??!???????Q      Y@Y??(??(.@a?뺮?:U@qnQ?ÌkP@y?\?aA??"?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 