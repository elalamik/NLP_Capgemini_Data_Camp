?	??)r??@??)r??@!??)r??@	??%??????%????!??%????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??)r??@?h9?C!=@1{C???A9+?&?|??I?ܘ??D??Yv??=Բ?*	?I+?V@2U
Iterator::Model::ParallelMapV2??w??x??!]t?E??=@)??w??x??1]t?E??=@:Preprocessing2F
Iterator::Model?Y?$???!?E]??K@)76;R}???1E]t??9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat_???F??!颋.ڛ4@)J(}!伏?1?袋?21@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?^??x?z?!??.?h?@)?^??x?z?1??.?h?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateZ??c!??!?袋nQ,@)aU??N?y?1?E]t?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip4??s??!/???K)F@)??g??t?1?E]t?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap衶???!    ?2@)?ص?ݒl?1]t?E?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??.?.i?!t?E]J@)??.?.i?1t?E]J@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??%????I`?ЮaX@Q?S??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?h9?C!=@?h9?C!=@!?h9?C!=@      ??!       "	{C???{C???!{C???*      ??!       2	9+?&?|??9+?&?|??!9+?&?|??:	?ܘ??D???ܘ??D??!?ܘ??D??B      ??!       J	v??=Բ?v??=Բ?!v??=Բ?R      ??!       Z	v??=Բ?v??=Բ?!v??=Բ?b      ??!       JGPUY??%????b q`?ЮaX@y?S??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsl?`??b??!l?`??b??"=
sequential_126/dense_378/MatMulMatMula*`???!?ʣ??z??0"=
 sequential_126/dense_380/SoftmaxSoftmax?u'j3??!????a??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??=?x??!?=:????"K
-gradient_tape/sequential_126/dense_378/MatMulMatMul???????!?Qn???0"K
/gradient_tape/sequential_126/dense_380/MatMul_1MatMul*?O??z??!ӥp$?E??"K
/gradient_tape/sequential_126/dense_379/MatMul_1MatMul??fb??!8?5x.??"=
sequential_126/dense_379/MatMulMatMul??fb??!??Ec??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamB=RܴJ??!????????"`
Cgradient_tape/sequential_126/batch_normalization_62/moments/truedivRealDivB=RܴJ??!q6l????Q      Y@Y??(??(.@a?뺮?:U@q?gw??R@yՃn?????"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 