?	?+?P??@?+?P??@!?+?P??@	-?S&????-?S&????!-?S&????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?+?P??@??E|'r=@1??B:<??A??n??o??I??q4G???Y???x???*	?x?&1?T@2U
Iterator::Model::ParallelMapV2}>ʈ??!ջ?$?C@)}>ʈ??1ջ?$?C@:Preprocessing2F
Iterator::Model1?:9Cq??!~݅q?K@)w???閍?1TC????1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat9?CmF??!L7}8?4@)?)??ŋ?1V?L??|0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceAgҦ?y?!??,?6?@)AgҦ?y?1??,?6?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?)Wx????!?B?L$-@)%??ID?w?1v?X?bu@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?6?xͫ??!?"z??*F@)?@?C?r?1?mr??`@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor4??`k?!?2?oB@)4??`k?1?2?oB@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap$???9"??!?] ed{2@)??Q??Zj?1?????I@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9-?S&????IA?4ћ0X@Qk??O??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??E|'r=@??E|'r=@!??E|'r=@      ??!       "	??B:<????B:<??!??B:<??*      ??!       2	??n??o????n??o??!??n??o??:	??q4G?????q4G???!??q4G???B      ??!       J	???x??????x???!???x???R      ??!       Z	???x??????x???!???x???b      ??!       JGPUY-?S&????b qA?4ћ0X@yk??O??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits0??v???!0??v???"=
sequential_207/dense_621/MatMulMatMulD^??(??! ??_?+??0"-
IteratorGetNext/_1_SendU?R???!?2????"=
 sequential_207/dense_623/SoftmaxSoftmax???y?[??!(?phJ???"=
sequential_207/dense_622/MatMulMatMul??.????!?i?k?Y??0"K
-gradient_tape/sequential_207/dense_621/MatMulMatMult??s??!???w???0"K
-gradient_tape/sequential_207/dense_622/MatMulMatMul?j?I???!???b???0"=
sequential_207/dense_623/MatMulMatMulZfY??4??!TA?????0"K
/gradient_tape/sequential_207/dense_623/MatMul_1MatMulB?Au???!??N?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam/T??.ԏ?!???????Q      Y@Y??(??(.@a?뺮?:U@q??vk]?E@y?Y?T"E??"?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?43.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 