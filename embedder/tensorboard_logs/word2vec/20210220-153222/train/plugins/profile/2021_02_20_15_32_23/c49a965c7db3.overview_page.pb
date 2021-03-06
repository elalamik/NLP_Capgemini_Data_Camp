?	??x?D@??x?D@!??x?D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??x?D@%???B@1\8?L??A!x|{נ??I?????@*?v???W@)      =2U
Iterator::Model::ParallelMapV2???B????!?????aA@)???B????1?????aA@:Preprocessing2F
Iterator::Model??'?b??!}??0?M@)?ɧǖ?1[`23L7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatՖ:?????!#??²:5@)???Q??1??lܔr1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceɑ????z?!???P?g@)ɑ????z?1???P?g@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?Tƿψ?!!$RW`)@)Ƈ?˶?v?1RY^?X@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipH?V
???!?&?W?D@)W?6ɏ?u?1???8fx@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Дm?!M??0?@@)????Дm?1M??0?@@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?\?	???![͚?/.@) |(?b?1????>@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIp'?-}X@Q{?OZ @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	%???B@%???B@!%???B@      ??!       "	\8?L??\8?L??!\8?L??*      ??!       2	!x|{נ??!x|{נ??!!x|{נ??:	?????@?????@!?????@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qp'?-}X@y{?OZ @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?܈????!?܈????"=
sequential_189/dense_567/MatMulMatMul???S??!?	?I:??0"-
IteratorGetNext/_2_RecvT??#?z??!6`a&?i??"K
-gradient_tape/sequential_189/dense_567/MatMulMatMul???>???!??@?&&??0"=
 sequential_189/dense_569/SoftmaxSoftmax??G^JƔ?!?	?????"=
sequential_189/dense_568/MatMulMatMul?Ȋ?=??!?=???0"K
-gradient_tape/sequential_189/dense_568/MatMulMatMulj~???!K????,??0"L
2sequential_189/batch_normalization_93/moments/meanMean?b?C`%??!z??I???"P
6sequential_189/batch_normalization_93/moments/varianceMean?B?*L???!?Ȉ>K??"K
/gradient_tape/sequential_189/dense_568/MatMul_1MatMul^??A????!Ӛ?z?G??Q      Y@Y??(??(.@a?뺮?:U@q?as?R?S@y?l9<??"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 