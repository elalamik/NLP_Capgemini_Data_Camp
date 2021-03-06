?	?????f7@?????f7@!?????f7@	???!d??????!d???!???!d???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?????f7@???,5@1(??????A	pz?ǥ?I|V?jm??YIf??C??*	o????a@2U
Iterator::Model::ParallelMapV2?!?aK???!??>??D@)?!?aK???1??>??D@:Preprocessing2F
Iterator::Model?Y,E??!???k8N@)?4?????1(??(??2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatS%??RΗ?!?c??&0@)N?f????1?&?I?*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=?Ͻ??!O??0@)ԁ??V_??1 i߈??#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?bc^G??!>}?^?@)?bc^G??1>}?^?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?????&??!fGv???C@)??c"?y?1?V?ff@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapU?Y??!??s??3@)c?D(bq?1?$&Ζ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????p?!C?}???@)?????p?1C?}???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???!d???I????BX@Q??[@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???,5@???,5@!???,5@      ??!       "	(??????(??????!(??????*      ??!       2		pz?ǥ?	pz?ǥ?!	pz?ǥ?:	|V?jm??|V?jm??!|V?jm??B      ??!       J	If??C??If??C??!If??C??R      ??!       Z	If??C??If??C??!If??C??b      ??!       JGPUY???!d???b q????BX@y??[@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?_}C??!?_}C??"=
sequential_194/dense_582/MatMulMatMul??50???!??$?????0"=
 sequential_194/dense_584/SoftmaxSoftmax	??`?c??!?w9?B??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????ﶘ?!nBSz????"K
-gradient_tape/sequential_194/dense_582/MatMulMatMul:?ݳ???!0????0"K
/gradient_tape/sequential_194/dense_584/MatMul_1MatMul0?%(^*??!?t??bh??"K
/gradient_tape/sequential_194/dense_583/MatMul_1MatMul˟?e6???!?.Ʋ??"=
sequential_194/dense_583/MatMulMatMul??n???!?3L????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamhx???|??!bb1?*??"K
-gradient_tape/sequential_194/dense_583/MatMulMatMulI}???!????3??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?-4ݞ?A@y???????"?
both?Your program is POTENTIALLY input-bound because 90.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?35.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 