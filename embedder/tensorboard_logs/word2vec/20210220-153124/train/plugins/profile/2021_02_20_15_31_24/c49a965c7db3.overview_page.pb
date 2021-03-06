?	/l?V^?A@/l?V^?A@!/l?V^?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-/l?V^?A@¥c?3?@@1F?G?R??A\?nK䂫?I??-???*	?Q??{`@2F
Iterator::Model?_cD???!??G?d?H@)??$W@??1X?k,??9@:Preprocessing2U
Iterator::Model::ParallelMapV2{-??1??!??#?@?7@){-??1??1??#?@?7@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?9w?^???!?E=V?;@)`??-??16"O???5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatffffff??!?%???0@)?P??C???1?m????+@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?'Hlw??!???/??@)?'Hlw??1???/??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?+?PO??!4?x?\I@)??M???v?19?Z?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorS??.?m?!?[	?,@)S??.?m?1?[	?,@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap"m?OT6??!h
?3F?=@)?2?FY?i?1?%???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?锺ϞX@Q???ZL??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	¥c?3?@@¥c?3?@@!¥c?3?@@      ??!       "	F?G?R??F?G?R??!F?G?R??*      ??!       2	\?nK䂫?\?nK䂫?!\?nK䂫?:	??-?????-???!??-???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?锺ϞX@y???ZL???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsDUKn&??!DUKn&??"=
sequential_184/dense_552/MatMulMatMul*?+o??!N?3?t??0"=
 sequential_184/dense_554/SoftmaxSoftmaxN?t??<??!,Wc?G???"=
sequential_184/dense_553/MatMulMatMul?:7t???!K???>???0"K
-gradient_tape/sequential_184/dense_552/MatMulMatMul?.@?6??!7?JȨ@??0"K
-gradient_tape/sequential_184/dense_553/MatMulMatMul쒶???!fc??*???0"-
IteratorGetNext/_2_Recv6P????!i??MUm??"K
/gradient_tape/sequential_184/dense_554/MatMul_1MatMul?=B?????!D?	?????"K
/gradient_tape/sequential_184/dense_553/MatMul_1MatMulO?V-V??!95j??|??"=
sequential_184/dense_554/MatMulMatMul???3??!?v???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qۼ7?
?P@y?|Vb.7??"?
both?Your program is POTENTIALLY input-bound because 94.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 