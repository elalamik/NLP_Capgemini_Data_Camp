?	?qS?/7@?qS?/7@!?qS?/7@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?qS?/7@??fF?N5@1?\??X3??Aen?ݳ??I?-?l?I??*	?l???op@2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?/L?
??!~L???M@){?/L?
??1~L???M@:Preprocessing2U
Iterator::Model::ParallelMapV2?-$`t??!??t???"@)?-$`t??1??t???"@:Preprocessing2F
Iterator::Model`??'??!???m:?2@)?x[??٘?1??@C?t"@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat7?DeÚ??!j?a???P@)?ի?耔?1?"Ta?t@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?c???_??!E?dqTT@)?H?H???1?Tɴ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?	??a??!0{?i]!@)???zO???1?????	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??s?f|?!결?@)??s?f|?1결?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?|???݉?!?\??5@)X?|[?Tw?1	??S@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??чBtX@QT???w@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??fF?N5@??fF?N5@!??fF?N5@      ??!       "	?\??X3???\??X3??!?\??X3??*      ??!       2	en?ݳ??en?ݳ??!en?ݳ??:	?-?l?I???-?l?I??!?-?l?I??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??чBtX@yT???w@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???????!???????"=
sequential_218/dense_654/MatMulMatMul`?Q????!??????0"=
 sequential_218/dense_656/SoftmaxSoftmaxD??*???!??E?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam+'m`????!iUL=?^??"K
-gradient_tape/sequential_218/dense_654/MatMulMatMulo?}?????!?/?	????0"K
/gradient_tape/sequential_218/dense_656/MatMul_1MatMul? ???2??!?A@+??"K
/gradient_tape/sequential_218/dense_655/MatMul_1MatMul??{????!????t??"=
sequential_218/dense_655/MatMulMatMul?p?~??!?g????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??Aև??!X??h???"K
-gradient_tape/sequential_218/dense_655/MatMulMatMul|2?a??!?ߢ?????0Q      Y@Y[ZZZZZ6@ajiiiiiS@qY???ܪJ@y?D?|???"?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?53.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 