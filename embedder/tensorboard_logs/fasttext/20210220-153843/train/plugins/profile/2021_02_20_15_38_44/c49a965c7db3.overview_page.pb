?	?+?SA@?+?SA@!?+?SA@	??̅@????̅@??!??̅@??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?+?SA@8?a?A?>@1?	?_????A??5?K??I+?m?@Y߿yq????*	/?$?u^@2U
Iterator::Model::ParallelMapV2?ɐc???!??&??<@)?ɐc???1??&??<@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!??????<@)??3?c???1?h?*?7@:Preprocessing2F
Iterator::Model?L??ݬ?!??L?=#G@)%??????1ϓ?H??1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatq??Ŗ?!W?be?@2@)?(@̘??1?????-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceo,(?4z?!q?hZ@)o,(?4z?1q?hZ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??Ss????!@u?H??J@)???s??r?1?f??+E@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor? !??p?!????
@)? !??p?1????
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Kģ?!S????@)cz?(k?1?r??W?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??̅@??IOϲMAX@Q?w3(?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8?a?A?>@8?a?A?>@!8?a?A?>@      ??!       "	?	?_?????	?_????!?	?_????*      ??!       2	??5?K????5?K??!??5?K??:	+?m?@+?m?@!+?m?@B      ??!       J	߿yq????߿yq????!߿yq????R      ??!       Z	߿yq????߿yq????!߿yq????b      ??!       JGPUY??̅@??b qOϲMAX@y?w3(?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsi???=??!i???=??"c
Jgradient_tape/sequential_212/batch_normalization_104/batchnorm/add_1/Sum_1Sums?F?>|??!?y??GM??"=
sequential_212/dense_636/MatMulMatMul'??Ƅ7??!<N?k84??0"=
 sequential_212/dense_638/SoftmaxSoftmaxb????,??!??:A????"=
sequential_212/dense_637/MatMulMatMul?]??fF??!},??b??0"M
3sequential_212/batch_normalization_104/moments/meanMean??-H????!?㶚֠??"K
-gradient_tape/sequential_212/dense_636/MatMulMatMul???^?i??!??Cs	???0"K
/gradient_tape/sequential_212/dense_637/MatMul_1MatMul?d[??T??!"?ٻX???"-
IteratorGetNext/_1_Sendvf?
????!??<???"K
-gradient_tape/sequential_212/dense_637/MatMulMatMul????WO??!?~???
??0Q      Y@Y??(??(.@a?뺮?:U@qB?92
F@y??x"?#??"?
both?Your program is POTENTIALLY input-bound because 90.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?44.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 