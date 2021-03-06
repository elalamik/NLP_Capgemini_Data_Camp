?	A?
??C@A?
??C@!A?
??C@	]????]????!]????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6A?
??C@E7?lB@1\??J????A?mr???I?1uWv???Y+?ެ???*	     ?_@2U
Iterator::Model::ParallelMapV2*??ѫ??!?SH??A;@)*??ѫ??1?SH??A;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ן??N??![pI;?'9@)w1?t????1?t??*4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?W???T??!??@?09@)????z??1??ᗫU1@:Preprocessing2F
Iterator::Model???i????!??f)?C@)?9z?ަ??1~\
!i(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)狽_??!B?Ӡl@))狽_??1B?Ӡl@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?
E????!????DN@)=?r?}ǀ?1؝幒?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/??Q?(x?!5?_梡@)/??Q?(x?15?_梡@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?YO????!<?o???<@)?`U??Ns?1??:M?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9]????IՌ?+eX@QI???? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	E7?lB@E7?lB@!E7?lB@      ??!       "	\??J????\??J????!\??J????*      ??!       2	?mr????mr???!?mr???:	?1uWv????1uWv???!?1uWv???B      ??!       J	+?ެ???+?ެ???!+?ެ???R      ??!       Z	+?ެ???+?ެ???!+?ެ???b      ??!       JGPUY]????b qՌ?+eX@yI???? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsf???ل??!f???ل??"-
IteratorGetNext/_1_Send?M'?oB??!??G?u???"=
sequential_215/dense_645/MatMulMatMul(??S???!?6?ʶ??0"=
 sequential_215/dense_647/SoftmaxSoftmax?R???ݔ?!@????R??"=
sequential_215/dense_646/MatMulMatMulHm:?P??!????????0"K
-gradient_tape/sequential_215/dense_645/MatMulMatMul??
K??!v&?*??0"[
:gradient_tape/sequential_215/dense_647/BiasAdd/BiasAddGradBiasAddGrad?R?o????!???B??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?97S??!??Z?G??"K
/gradient_tape/sequential_215/dense_647/MatMul_1MatMul?9?!??!@*?	?I??"K
-gradient_tape/sequential_215/dense_646/MatMulMatMulL,,?	??!?4?J??0Q      Y@Y??(??(.@a?뺮?:U@qP	CUF@y,8>?????"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?44.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 