?	??	-D@??	-D@!??	-D@	2Z??q??2Z??q??!2Z??q??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??	-D@\sG?B@1??
?.??A>v()???I?Cl?pr@Y?ܶ?Q??*	??ʡe+?@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?m5??/@!U??oEpX@)?[?O)@1:9/?fX@:Preprocessing2U
Iterator::Model::ParallelMapV2?w(
????!ǎoA???)?w(
????1ǎoA???:Preprocessing2F
Iterator::Model????=???!s?4????)pB!???1??'y??:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice&U?M?M??! ͖8?%??)&U?M?M??1 ͖8?%??:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenates?SrN???!A?M????)?_̖????1?ev????:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip+2: 	K@!?#-GřX@)J}Yک?|?1J?Ɣ???:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?F???x?!?q u????)?F???x?1?q u????:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?+.??M??!???????)Έ???c?1???????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no92Z??q??I?Z:?PZX@Q<?(?@3??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	\sG?B@\sG?B@!\sG?B@      ??!       "	??
?.????
?.??!??
?.??*      ??!       2	>v()???>v()???!>v()???:	?Cl?pr@?Cl?pr@!?Cl?pr@B      ??!       J	?ܶ?Q???ܶ?Q??!?ܶ?Q??R      ??!       Z	?ܶ?Q???ܶ?Q??!?ܶ?Q??b      ??!       JGPUY2Z??q??b q?Z:?PZX@y<?(?@3???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?0L?J???!?0L?J???"<
sequential_92/dense_278/SoftmaxSoftmax)????&??!a(???"<
sequential_92/dense_276/MatMulMatMul?NWw???!Y???o??0"<
sequential_92/dense_277/MatMulMatMul?*9Pm???!????d??0"J
.gradient_tape/sequential_92/dense_278/MatMul_1MatMul??m)?2??!b? ?G??"J
.gradient_tape/sequential_92/dense_277/MatMul_1MatMulڞS (??!=#+H????"-
IteratorGetNext/_1_Send?1?9H??!??(?????"J
,gradient_tape/sequential_92/dense_276/MatMulMatMulf??????!??!/????0"<
sequential_92/dense_278/MatMulMatMul"?)(??!0ED?>???0"J
,gradient_tape/sequential_92/dense_277/MatMulMatMulO??c??!5=?<???0Q      Y@Y??(??(.@a?뺮?:U@q??R?D%@yi?k^hY??"?
both?Your program is POTENTIALLY input-bound because 89.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?7.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 