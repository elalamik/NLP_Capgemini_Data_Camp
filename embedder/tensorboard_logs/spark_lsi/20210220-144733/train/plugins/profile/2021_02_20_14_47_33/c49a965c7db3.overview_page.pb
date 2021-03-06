?	??z?_9@??z?_9@!??z?_9@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??z?_9@??"2?7@1????v!??A?hs?ۄ??Iw?>XƆ??*	?$??#X@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(???,??!?;D??aB@)?N?????1YVV?@@:Preprocessing2U
Iterator::Model::ParallelMapV2??)t^c??!?Y =??7@)??)t^c??1?Y =??7@:Preprocessing2F
Iterator::Model?4?????!¬Z??E@)?˸?????1???ߎ 4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??(]?w?!ǈ}iO@@)??(]?w?1ǈ}iO@@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate)%?????!c?!F?+(@)oG8-x?w?1?K?"?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?߅??ʫ?!=S?q?L@)SςP??q?1]ӗ??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf???-=j?!???>??
@)f???-=j?1???>??
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapZ??mē??!Κ?-@)?T?	g?f?1???-??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIJ?K?׀X@Q??????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??"2?7@??"2?7@!??"2?7@      ??!       "	????v!??????v!??!????v!??*      ??!       2	?hs?ۄ???hs?ۄ??!?hs?ۄ??:	w?>XƆ??w?>XƆ??!w?>XƆ??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qJ?K?׀X@y???????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits|'?tm??!|'?tm??"<
sequential_49/dense_149/SoftmaxSoftmax??l<O???!?b$.????"<
sequential_49/dense_147/MatMulMatMul?9Ll??!?&??????0"J
,gradient_tape/sequential_49/dense_147/MatMulMatMul?P??1Ĕ?!???????0"J
.gradient_tape/sequential_49/dense_148/MatMul_1MatMul?F?9????!`r7??"J
.gradient_tape/sequential_49/dense_149/MatMul_1MatMul?F?9????!?$[Xi??"<
sequential_49/dense_148/MatMulMatMul?F?9????!???~????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??/hh??!? ???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam8[CB)&??!?3?{??"Z
9gradient_tape/sequential_49/dense_149/BiasAdd/BiasAddGradBiasAddGrad???^??!???[#??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?rW?2R@y@l?-H??"?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?7.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 