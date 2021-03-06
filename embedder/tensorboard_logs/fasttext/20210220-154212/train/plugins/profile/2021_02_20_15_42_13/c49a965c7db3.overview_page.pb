?	???8C@???8C@!???8C@	???Pm??????Pm???!???Pm???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???8C@????d?A@1?L1AG??A?F???Il?}?
??YqY?? ??*	?ʡE??Y@2U
Iterator::Model::ParallelMapV2???<????!?uU???B@)???<????1?uU???B@:Preprocessing2F
Iterator::Model@̘?5??!U?F???L@)?$A?
??1??w3?3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatg?+??2??!??|?_?4@)??H.???1	ƛv??0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???????!J???+@)??~?Ϛ?1?K?p??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice7????{?!?? @)7????{?1?? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipPn??????!??\hzE@)?Ȓ9?wu?1w>?J?D@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor%=?N?p?!&??@)%=?N?p?1&??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapt&m????!?A?F?0@)T?qs*i?14˳???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???Pm???I?L??_X@Q?mw?F??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????d?A@????d?A@!????d?A@      ??!       "	?L1AG???L1AG??!?L1AG??*      ??!       2	?F????F???!?F???:	l?}?
??l?}?
??!l?}?
??B      ??!       J	qY?? ??qY?? ??!qY?? ??R      ??!       Z	qY?? ??qY?? ??!qY?? ??b      ??!       JGPUY???Pm???b q?L??_X@y?mw?F???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?cr??n??!?cr??n??"=
sequential_223/dense_669/MatMulMatMul1z?/????!??hYF??0"=
 sequential_223/dense_671/SoftmaxSoftmaxߙ{{?ȗ?!-&؈[??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??֜??!-??_?8??"K
/gradient_tape/sequential_223/dense_670/MatMul_1MatMul??''???!?K??2??"K
-gradient_tape/sequential_223/dense_669/MatMulMatMul??'Us??!?????0"K
/gradient_tape/sequential_223/dense_671/MatMul_1MatMul$牳???!V?ty??"=
sequential_223/dense_670/MatMulMatMul??H2Ԍ?!?ϖ@`??0"a
Dgradient_tape/sequential_223/batch_normalization_111/moments/truedivRealDive??y???!"D?2??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam=???hl??!,??O????Q      Y@Y??(??(.@a?뺮?:U@q!`??^O@y?m???"?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?62.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 