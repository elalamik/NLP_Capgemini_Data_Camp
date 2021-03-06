?	
?2?&?B@
?2?&?B@!
?2?&?B@	?]AB?????]AB????!?]AB????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6
?2?&?B@????uiA@1T?D?[J??Axb֋????I?c?=	???Y?k????*	?|?5^?_@2U
Iterator::Model::ParallelMapV2????????!????s?H@)????????1????s?H@:Preprocessing2F
Iterator::Model???????!²
???P@)؁sF????1?qU?ڸ1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?sѐ?(??!?Me/?T0@)fi??r???1??K+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateZ??c!??!?_Vc?*$@)?б?J|?1?<?o|?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice%??ID?w?!q??V?@)%??ID?w?1q??V?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?u7O??!{???r@@)8??d?`t?1i`
?t@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?TPQ?+m?!$???y?@)?TPQ?+m?1$???y?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??m?R]??!>6?NB)@)z7ej?1?Z??^@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?]AB????I?^mW?!X@Q=t3qB[@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????uiA@????uiA@!????uiA@      ??!       "	T?D?[J??T?D?[J??!T?D?[J??*      ??!       2	xb֋????xb֋????!xb֋????:	?c?=	????c?=	???!?c?=	???B      ??!       J	?k?????k????!?k????R      ??!       Z	?k?????k????!?k????b      ??!       JGPUY?]AB????b q?^mW?!X@y=t3qB[@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits%H?R???!%H?R???"-
IteratorGetNext/_1_Send:??8!???!4?G0[??"=
sequential_142/dense_426/MatMulMatMulk??h???!?mJ?+??0"K
-gradient_tape/sequential_142/dense_426/MatMulMatMul]=??滕?!???]???0"=
 sequential_142/dense_428/SoftmaxSoftmax?b?!???!?CTs??"=
sequential_142/dense_427/MatMulMatMul??"e?Ǔ?!?3MX)???0"K
-gradient_tape/sequential_142/dense_427/MatMulMatMul?[؍????!??*QD??0"L
2sequential_142/batch_normalization_70/moments/meanMean???]L;??!?????"P
6sequential_142/batch_normalization_70/moments/varianceMean?Vĩ??!???9G??"K
/gradient_tape/sequential_142/dense_428/MatMul_1MatMulp???????!2gI???Q      Y@Y??(??(.@a?뺮?:U@q???^ܔB@y_ڰ??r??"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?37.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 